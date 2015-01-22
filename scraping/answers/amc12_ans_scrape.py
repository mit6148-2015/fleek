from bs4 import BeautifulSoup
import urllib2
import xlwt
import json
# Using BeautifulSoup and urllib to scrape AIME problems. 

out_file = open("amc12_answers.json","w")
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
	print(aimelink)
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
		print("in a list")
		for x in listCheck:
			stripped = x.get_text().strip().lower()
			#print(stripped)
			if "." in stripped:
				y = stripped.index(".") + 1
				stripped = stripped[y:].strip()
			if len(stripped) > 1:
				if "(a)" in stripped:
					stripped  = "A"
				elif "(b)" in stripped:
					stripped  = "B"
				elif "(c)" in stripped:
					stripped  = "C"
				elif "(d)" in stripped:
					stripped  = "D"
				elif "(e)" in stripped:
					stripped  = "E"
				else:
					stripped = ""
			if len(stripped) != 1:
				stripped = ""
			answers = answers + [stripped]
			#print(answers)

	else:
		print("in p tags")
		pCheck = bodyContent.find_all("p")
		if len(pCheck) >= 15:
			for x in pCheck:
				stripped = x.get_text().strip().lower()
			#print(stripped)
				if "." in stripped:
					y = stripped.index(".") + 1
					stripped = stripped[y:].strip()
				if len(stripped) > 1:
					if "(a)" in stripped:
						stripped  = "a"
					elif "(b)" in stripped:
						stripped  = "b"
					elif "(c)" in stripped:
						stripped  = "c"
					elif "(d)" in stripped:
						stripped  = "d"
					elif "(e)" in stripped:
						stripped  = "e"
					else:
						stripped = ""
				#print("trying " + stripped)
				if len(stripped) != 1:
					stripped = ""
				answers = answers + [stripped]
			#print(answers)
	if len(answers) < 25:
		answers = []
	if len(answers) > 25:
		answers = answers[:25]
	print(answers)
	return answers
# Use the main function to get the AIME problems for any year.
if __name__ == '__main__':
 	year = 2000
 	out_file.write("[\n")
 	while year < 2015:
 		if year < 2002:
 			ansString = str(year) + "_AMC_12_Answer_Key"
 			link = 'http://www.artofproblemsolving.com/Wiki/index.php/' + ansString
 			ans = readAnswers(ansString)
 			data = data = {"contest_name":"AMC 12", "name_modifier":"","year":year, "answers":ans, "source_name":"Art of Problem Solving", "source_link": link}
			json.dump(data,out_file, indent=4, separators=(',', ': ')) 
			out_file.write(",\n")
		else:
			ansString = str(year) + "_AMC_12A_Answer_Key"
 			link = 'http://www.artofproblemsolving.com/Wiki/index.php/' + ansString
 			ans = readAnswers(ansString)
 			data = data = {"contest_name":"AMC 12", "name_modifier":"A","year":year, "answers":ans, "source_name":"Art of Problem Solving", "source_link": link}
			json.dump(data,out_file, indent=4, separators=(',', ': ')) 
			out_file.write(",\n")

			ansString = str(year) + "_AMC_12B_Answer_Key"
 			link = 'http://www.artofproblemsolving.com/Wiki/index.php/' + ansString
 			ans = readAnswers(ansString)
 			data = data = {"contest_name":"AMC 12", "name_modifier":"B","year":year, "answers":ans, "source_name":"Art of Problem Solving", "source_link": link}
			json.dump(data,out_file, indent=4, separators=(',', ': ')) 
			out_file.write(",\n")

		year = year + 1
	out_file.write("]\n")

