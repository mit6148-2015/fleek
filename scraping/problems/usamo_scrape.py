from bs4 import BeautifulSoup
import urllib2
import xlwt
import json
# Using BeautifulSoup and urllib to scrape AIME problems. 
out_file = open("usamo.json","w")

# Get the code from a LaTeX URL.
def getLatex(url):
	page = urllib2.urlopen(url)  
	html_doc = page.read()
	soup = BeautifulSoup(html_doc)
	soup.prettify()
	return  soup.code.get_text()

# Read the AIME page, and look for the problems. So happens that <span class="res_gen"> us
# unique to the AIME problems on the page.
def readPagesUSAMO(year):
	# All AIME links follow this format: just add the year.
	aimelink = 'http://www.artofproblemsolving.com/Forum/resources.php?c=182&cid=27&year='+str(year)+'&sid=8bf355f3c674ece9cea1dc6232e8fffc'
	page = urllib2.urlopen(aimelink)  
	html_doc = page.read()
	soup = BeautifulSoup(html_doc)
	soup.prettify()
	probNum = 1
	contest = "USAMO"

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
				x.replace_with(latex)
			#print(tb.get_text().strip())
			print(year)
			print (probNum)
			data = {"contest_name":"USAMO","year":year, "problem_number":probNum, "problem_statement":tb.get_text().strip(), "source_name":"Art of Problem Solving", "source_link": aimelink}
			#print(data)
			probNum = probNum + 1
			currind = currind + 1
			json.dump(data,out_file, indent=4, separators=(',', ': ')) 
			out_file.write(",\n") 


# Use the main function to get the AIME problems for any year.
if __name__ == '__main__':
	out_file.write("[") 
	currind = 1
 	year = 1972
 	while year < 2015:
		readPagesUSAMO(year)
		year = year + 1
	out_file.write("]") 
