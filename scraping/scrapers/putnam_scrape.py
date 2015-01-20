from bs4 import BeautifulSoup
import urllib2
import xlwt
import json
# Using BeautifulSoup and urllib to scrape AIME problems. 
out_file = open("putnam.json","w")

# Get the code from a LaTeX URL.
def getLatex(url):
	page = urllib2.urlopen(url)  
	html_doc = page.read()
	soup = BeautifulSoup(html_doc)
	soup.prettify()
	return  soup.code.get_text()

# Read the AIME page, and look for the problems. So happens that <span class="res_gen"> us
# unique to the AIME problems on the page.
def readPagesPutnam(year):
	# All AIME links follow this format: just add the year.
	aimelink = 'http://www.artofproblemsolving.com/Forum/resources.php?c=2&cid=23&year='+str(year)+'&sid=a5ed14cdf428267d6f5c296a3d8f583e'
	page = urllib2.urlopen(aimelink)  
	html_doc = page.read()
	soup = BeautifulSoup(html_doc)
	soup.prettify()
	probNum = 1
	mod = "A"
	contest = "Putnam"

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
			print (mod + str(probNum))
			data = {"contest_name":"Putnam", "name_modifier":mod,"year":year, "problem_number":probNum, "problem_statement":tb.get_text().strip(), "source_name":"Art of Problem Solving", "source_link": aimelink}
			json.dump(data,out_file, indent=4, separators=(',', ': ')) 
			probNum = probNum + 1
			currind = currind + 1
			if probNum == 7:
				probNum = 1
				mod = "B"



# Use the main function to get the AIME problems for any year.
if __name__ == '__main__':
	currind = 1
 	year = 1994
 	while year < 2015:
		readPagesPutnam(year)
		year = year + 1

