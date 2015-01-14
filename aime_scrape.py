from bs4 import BeautifulSoup
import urllib2
# Using BeautifulSoup and urllib to scrape AIME problems. 

# Get the code from a LaTeX URL.
def getLatex(url):
	page = urllib2.urlopen(url)  
	html_doc = page.read()
	soup = BeautifulSoup(html_doc)
	soup.prettify()
	return  soup.code.get_text()

# Read the AIME page, and look for the problems. So happens that <span class="res_gen"> us
# unique to the AIME problems on the page.
def readPagesAIME(year):
	# All AIME links follow this format: just add the year.
	aimelink = 'http://www.artofproblemsolving.com/Forum/resources.php?c=182&cid=45&year='+str(year)+'&sid=9d841f03e3a3ee43394bcea3566dedde'
	page = urllib2.urlopen(aimelink)  
	html_doc = page.read()
	soup = BeautifulSoup(html_doc)
	soup.prettify()

	#Find <span class="res_gen">, and replace all <a> tags with the result of getLatex(href).
	for tb in soup.find_all("span"):
		if tb.get('class') != None and tb.get('class')[0] == "res_gen":
			for x in tb.find_all('a'):
				link = x.get('href')
				if link[0]=='/':
					newlink = "http://artofproblemsolving.com" + x.get('href')
				else:
					newlink = "http://artofproblemsolving.com/Forum/" + x.get('href')
				latex = getLatex(newlink)
				x.replace_with(latex)
			print(tb.get_text().strip())

# Use the main function to get the AIME problems for any year.
if __name__ == '__main__':
	readPagesAIME(1992)
