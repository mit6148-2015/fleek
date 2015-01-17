from bs4 import BeautifulSoup
import urllib2
import xlwt
# Using BeautifulSoup and urllib to scrape AIME problems. 


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
	amclink = 'http://www.artofproblemsolving.com/Forum/resources.php?c=182&cid=42&year='+str(year)+'&sid=e3d9995d6d30e45efdacb5c7c523b3ce'
	page = urllib2.urlopen(amclink)
	html_doc = page.read()
	soup = BeautifulSoup(html_doc)
	soup.prettify()
	probNum = 1
	contest = "AMC 8"
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
				if '(A)' in latex and '(E)' in latex and '(C)' in latex:
					answers = getChoices(latex)
					if len(answers) == 5:
						#print(currind)
						#print(answers)
						ws.write(currind, 4, answers[0])
						ws.write(currind, 5, answers[1])
						ws.write(currind, 6, answers[2])
						ws.write(currind, 7, answers[3])
						ws.write(currind, 8, answers[4])
					latex = ""
				x.replace_with(latex)
			#print(tb.get_text().strip())
			print (probNum)
			#print(tb.get_text().strip())
			ws.write(currind, 0, contest)
			ws.write(currind, 1, year)
			ws.write(currind, 2, probNum)
			ws.write(currind, 3, tb.get_text().strip())
			currind = currind + 1
			probNum = probNum + 1
			wb.save('amc8_probs.xls')

# Use the main function to get the AIME problems for any year.
if __name__ == '__main__':
	currind = 1
	wb = xlwt.Workbook()
	ws = wb.add_sheet('AMC 8 Problems')
	ws.write(0, 0, "Contest Name")
	ws.write(0, 1, "Year")
	ws.write(0, 2, "Problem Number")
	ws.write(0, 3, "Problem")
	ws.write(0, 4, "A")
	ws.write(0, 5, "B")
	ws.write(0, 6, "C")
	ws.write(0, 7, "D")
	ws.write(0, 8, "E")
 	year = 1985
 	while year < 2015:
		readPagesAMC10(year)
		year = year + 1
	wb.save('amc8_probs.xls')
