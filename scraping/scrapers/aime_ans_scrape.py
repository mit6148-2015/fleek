from bs4 import BeautifulSoup
import urllib2
import xlwt
import json
# Using BeautifulSoup and urllib to scrape AIME problems. 

out_file = open("aime_answers.json","w")
# Get the code from a LaTeX URL.
def getLatex(url):
	page = urllib2.urlopen(url)  
	html_doc = page.read()
	soup = BeautifulSoup(html_doc)
	soup.prettify()
	return  soup.code.get_text()

# Read the AIME page, and look for the problems. So happens that <span class="res_gen"> us
# unique to the AIME problems on the page.
def readAnswers(name_string):
	# All AIME links follow this format: just add the year.
	aimelink = 'http://www.artofproblemsolving.com/Wiki/index.php/' + name_string
	#print(aimelink)
	page = urllib2.urlopen(aimelink)  
	html_doc = page.read()
	soup = BeautifulSoup(html_doc)
	soup.prettify()
	probNum = 1
	contest = "AIME"
	bodyContent = soup.find(id="bodyContent")
	#Find <span class="res_gen">, and replace all <a> tags with the result of getLatex(href)
	listCheck = bodyContent.find_all("li")
	answers = []
	print(len(listCheck))
	if len(listCheck) >= 15:
		for x in listCheck:
			answers = answers + [x.get_text().strip()]
	else:
		pCheck = bodyContent.find_all("p")
		if len(pCheck) == 15:
			for x in pCheck:
				x1 = x.get_text().strip()
				if "." in x1:
					y = x1.index(".") + 1
					answers = answers + [x1[y:]]
	if len(answers) < 15:
		answers = []
	if len(answers) > 15:
		answers = answers[:15]
	print(answers)
	return answers
# Use the main function to get the AIME problems for any year.
if __name__ == '__main__':
 	year = 1983
 	while year < 2015:
 		if year == 1983:
 			ansString = str(year) + "_AIME/Answer_Key"
 			link = 'http://www.artofproblemsolving.com/Wiki/index.php/' + ansString
 			ans = readAnswers(ansString)
 			data = data = {"contest_name":"AIME", "name_modifier":"","year":year, "answers":ans, "source_name":"Art of Problem Solving", "source_link": link}
 			json.dump(data,out_file, indent=4, separators=(',', ': ')) 
			out_file.write(",\n")
 		elif year < 2000:
 			ansString = str(year) + "_AIME_Answer_Key"
 			link = 'http://www.artofproblemsolving.com/Wiki/index.php/' + ansString
 			ans = readAnswers(ansString)
 			data = data = {"contest_name":"AIME", "name_modifier":"","year":year, "answers":ans, "source_name":"Art of Problem Solving", "source_link": link}
			json.dump(data,out_file, indent=4, separators=(',', ': ')) 
			out_file.write(",\n")
		else:
			ansString = str(year)+"_AIME_I_Answer_Key"
			link = 'http://www.artofproblemsolving.com/Wiki/index.php/' + ansString
 			ans = readAnswers(ansString)
 			data = data = {"contest_name":"AIME", "name_modifier":"","year":year, "answers":ans, "source_name":"Art of Problem Solving", "source_link": link}
			json.dump(data,out_file, indent=4, separators=(',', ': ')) 
			out_file.write(",\n")

			ansString = str(year)+"_AIME_II_Answer_Key"
			link = 'http://www.artofproblemsolving.com/Wiki/index.php/' + ansString
 			ans = readAnswers(ansString)
 			data = data = {"contest_name":"AIME", "name_modifier":"","year":year, "answers":ans, "source_name":"Art of Problem Solving", "source_link": link}
			json.dump(data,out_file, indent=4, separators=(',', ': ')) 
			out_file.write(",\n")
		year = year + 1

