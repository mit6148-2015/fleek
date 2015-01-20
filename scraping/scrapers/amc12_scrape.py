from bs4 import BeautifulSoup
import urllib2
import xlwt
import json
# Using BeautifulSoup and urllib to scrape AIME problems. 

out_file = open("amc12.json","w")

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
			print(array)
			return(array)
		text = text[before:]
		if '}' in text:
			after = text.index('}')
		else: 
			array = ["lol"]
			print(array)
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
def readPagesAMC12(year):
	print(year)
	# All AIME links follow this format: just add the year.
	amclink = 'http://www.artofproblemsolving.com/Forum/resources.php?c=182&cid=44&year='+str(year)+'&sid=e3d9995d6d30e45efdacb5c7c523b3ce'
	page = urllib2.urlopen(amclink)
	html_doc = page.read()
	soup = BeautifulSoup(html_doc)
	soup.prettify()
	probNum = 1
	if year < 2000:
		contest = "AHSME"
	elif year < 2002:
		contest = "AMC 12"
	else:
		contest = "AMC 12 A"

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
						if year != 1963 or probNum != 26:
							contest_answers = answers
					latex = ""
				x.replace_with(latex)
			#print(tb.get_text().strip())
			print (probNum)
			#print(tb.get_text().strip())
			data = {"contest":contest,"year":year, "problem_number":probNum, "problem_statement":tb.get_text().strip(), "source_name":"Art of Problem Solving", "source_link": amclink, "answer_names":["A", "B", "C", "D", "E"], "answer_choices":contest_answers}
			currind = currind + 1
			#print(data)
			probNum = probNum + 1
			if probNum == 26 and contest == "AMC 12 A":
				probNum = 1
				contest = "AMC 12 B"
			if probNum == 26 and contest == "AMC 12 B":
				probNum = 1
				contest = "AMC 12 P"
			json.dump(data,out_file, indent=4, separators=(',', ': ')) 

# Use the main function to get the AIME problems for any year.
if __name__ == '__main__':
	currind = 1
	wb = xlwt.Workbook()
	ws = wb.add_sheet('AMC 12 Problems')
 	year = 1950
 	#year = 2014
 	while year < 2015:
		readPagesAMC12(year)
		year = year + 1
