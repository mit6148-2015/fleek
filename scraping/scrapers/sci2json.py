from bs4 import BeautifulSoup
import json


out_file = open("scibowl.json","w")

def getSciBowl(fileNum, setNum, roundNum):
	fileName = "./blurtians/xml/round" + str(fileNum) + ".xml"
	soup = BeautifulSoup(open(fileName))
	soup.prettify()
	for q in soup.find_all("fullq"):
		num = q.get("num")
		level = q.get("level")
		question = q.question.get_text()
		subject = q.subject.get_text()
		qtype = q.type.get_text()
		#answer = q.answer.get_text()
		choices = []
		choice_names = ""
		answer = ""
		if '\u00d7' in question:
			print(question)
		if qtype == "multiple_choice":
			answer = q.answer_choice.get_text()
			w = q.w_choice.get_text()
			x = q.x_choice.get_text()
			y = q.y_choice.get_text()
			z = q.z_choice.get_text()
			choices = [w,x,y,z]
			choice_names = ["W", "X", "Y", "Z"]
		else:
			answer = q.answer.get_text()
		set_name = "NSB Sample Set " + str(setNum)
		round_num = "Round " + str(roundNum)
		data = {"contest_name":"National Science Bowl", "set_name":set_name, "round":round_num, "question_type":qtype, "question_level":level,"problem_number":num, "problem_statement":question, "choice_names":choice_names, "choices":choices, "answer": answer, "source_name":"National Science Bowl", "source_link":"http://science.energy.gov/wdts/nsb/high-school/high-school-regionals/hs-rules-forms-resources/sample-science-bowl-questions/"}
		json.dump(data,out_file, indent=4, separators=(',', ': ')) 
		out_file.write(",\n")


if __name__ == '__main__':
	out_file.write("[\n")
	x = 101
	while x < 118:
		print("Doing Set 1 Round " + str(x-100)+"...")
		getSciBowl(x,1,x-100)
		x = x + 1
	x = 201
	while x < 218:
		print("Doing Set 2 Round " + str(x-200)+"...")
		getSciBowl(x,1,x-200)
		x = x + 1
	out_file.write("]\n")
	


