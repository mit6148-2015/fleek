import json
from subprocess import call
import os

imageIndex = 1;
num_runs = 0

def getAll(contest):
	global imageIndex
	imageIndex = 1
	print("Rendering " + contest + "...")
	json_name = contest+"_probs_asy.json"
	out_file = open(json_name, "w")
	global imageIndex
	file_open = "../problems/" + contest + ".json"
	out_file.write("[\n")
	with open(file_open, 'r+') as f:
	    data = json.load(f)
	    for ind in range(len(data)):
	    	x = data[ind]
	    	num_runs = 0
	    	name = x["problem_statement"]
	    	probAndTags = getAsy(name, contest, [])
	    	x["problem_statement"] = probAndTags[0]
	    	x["image_tags"] = probAndTags[1]
	    	newAnswersArray = []

#	    	if "answer_choices" in x:
#	    		for choice in x["answer_choices"]:
#	    			print("hi")
#	    			newChoiceTags = getAsy(choice, "CHOICETESTING", [])
#	    			newChoice = newChoiceTags[0]
#	    			newtags = newChoiceTags[1]
#	    			x["image_tags"] = x["image_tags"] + [newtags]
#
#	    			if newChoice != choice:
#	    				print(contest + " " + choice)
#
#	    			newAnswersArray = newAnswersArray + [newChoice]
#
#	    		x["answer_choices"] = newAnswersArray

	    	json.dump(x,out_file, indent=4, separators=(',', ': ')) 
	    	if ind != len(data) - 1:
	    		out_file.write(",\n")
	out_file.write("]\n")

def getAsy(prob, contest, tagArray):
	global imageIndex
	if "[asy]" not in prob:
		return (prob,tagArray)
	else:
		if contest == "CHOICETESTING":
			print(prob)
		x = prob.index("[asy]")
		y = prob.index("[/asy]") + 6
		tag = contest + "_" + str(imageIndex)
		tagArray = tagArray + [tag]
		imageTag = " <img src=\"/assets/img/" + tag + ".svg\" class=\"problem-img\"> "
		imageIndex = imageIndex + 1
		asyCode = prob[x:y]
		asyToImage(asyCode, tag)
		newProb = prob[:x] + imageTag + prob[y:]
		return getAsy(newProb, contest, tagArray)

def asyToImage(asy, tag):
	fileName = "asyfiles/"+ tag + ".asy"
	asyfile = open(fileName,"w")
	asy = asy.strip()
	s = "settings.outformat=\"svg\";\nimport olympiad;\nunitsize(15);\n\n"
	asyfile.write(s)
	asyfile.write(asy[5:-6])
	#shellstring = "/usr/local/bin/asy ./asyfiles/" + tag + ".asy -o ./imagefiles/" + tag + ".svg"
	#print 'doing ' + tag
	#call(shellstring, shell=True)
	#os.remove(fileName)


if __name__ == '__main__':
	getAll("amc8")
	getAll("amc10")
	getAll("amc12")
	getAll("ahsme")
	getAll("aime")
	getAll("usamo")
	getAll("usajmo")
	getAll("putnam")
	print("Done!")
