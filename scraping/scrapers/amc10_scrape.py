from bs4 import BeautifulSoup
import urllib2
import xlwt
import json
# Using BeautifulSoup and urllib to scrape AIME problems. 


out_file = open("amc10.json","w")
# Get the code from a LaTeX URL.
def getLatex(url):
	page = urllib2.urlopen(url)  
	html_doc = page.read()
	soup = BeautifulSoup(html_doc)
	soup.prettify()
	return  soup.code.get_text()

def getChoices(text):
	#print("starting getchoices")
	array = []
	for x in ['(A)', '(B)', '(C)', '(D)', '(E)']:
		if x in text:
			before = text.index(x) + 3
		else:
			array = ["lol fag"]
			return(array)
		text = text[before:]
		if '}' in text:
			after = text.index('}')
		else: 
			array = ["lol"]
			return(array)
		text = text[after:]
		if 'qquad' not in text:
			choice = text[after:-1].strip()
		else:
			end = text.index('\qquad')
			choice = text[after:end].strip()
 			text = text[end:]
 		if len(choice) > 0 and choice[0] == '}':
			#print("YESSSSS")
			choice = choice[1:].strip()
		if len(choice) > 0 and choice[0:2] == '\ ':
			#print("YES")
			choice = choice[1:].strip()
		if len(choice) > 0 and choice[0] == '}':
			#print("YESSSSS")
			choice = choice[1:].strip()
		if len(choice) > 0 and choice[0:2] == '\ ':
			#print("YES")
			choice = choice[1:].strip()
		array = array + ['$'+choice+'$']			
		#print(x + ' $' + choice+'$')
	#print(array)
	return(array)





# Read the AIME page, and look for the problems. So happens that <span class="res_gen"> us
# unique to the AIME problems on the page.
def readPagesAMC10(year):
	print(year)
	# All AIME links follow this format: just add the year.
	amclink = 'http://www.artofproblemsolving.com/Forum/resources.php?c=182&cid=43&year='+str(year)+'&sid=b1293d66838fe140bea88a8d212e30e5'
	page = urllib2.urlopen(amclink)
	html_doc = page.read()
	soup = BeautifulSoup(html_doc)
	soup.prettify()
	probNum = 1
	if year < 2002:
		contest = ""
	else:
		contest = "A"

	#Find <span class="res_gen">, and replace all <a> tags with the result of getLatex(href)
	for tb in soup.find_all("span"):
		global currind
		if tb.get('class') != None and tb.get('class')[0] == "res_gen":
			for x in tb.find_all('a'):
				link = x.get('href')
				if link[0]=='/':
					newlink = "http://artofproblemsolving.com" + x.get('href')
				else:
					newlink = "http://artofproblemsolving.com/Forum/" + x.get('href')
				latex = getLatex(newlink)
				contest_answers = []
				if '(A)' in latex and '(E)' in latex and '(C)' in latex:
					answers = getChoices(latex)
					if len(answers) == 5:
						#print(currind)
						#print(answers)
						contest_answers = answers
					latex = ""
				x.replace_with(latex)
			#print(tb.get_text().strip())
			print (probNum)
			#print(tb.get_text().strip())
			data = {"contest_name":"AMC 10", "name_modifier":contest,"year":year, "problem_number":probNum, "problem_statement":tb.get_text().strip(), "source_name":"Art of Problem Solving", "source_link": amclink, "answer_names":["A", "B", "C", "D", "E"], "answer_choices":contest_answers}
			currind = currind + 1
			probNum = probNum + 1
			if probNum == 26 and contest != "B":
				probNum = 1
				contest = "B"
			if probNum == 26 and contest == "B":
				probNum = 1
				contest = "P"
			json.dump(data,out_file, indent=4, separators=(',', ': ')) 
			out_file.write(",\n")

# Use the main function to get the AIME problems for any year.
if __name__ == '__main__':
	out_file.write("[\n")
	currind = 1
 	year = 2000
 	while year < 2015:
		readPagesAMC10(year)
		year = year + 1
	out_file.write("]\n")
