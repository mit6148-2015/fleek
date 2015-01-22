import json
from subprocess import call
import os

imageIndex = 1;
num_runs = 0

def getAll(contest):
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
	    	json.dump(x,out_file, indent=4, separators=(',', ': ')) 
	    	if ind != len(data) - 1:
	    		out_file.write(",\n")
	out_file.write("]\n")

def getAsy(prob, contest, tagArray):
	global imageIndex
	if "[asy]" not in prob:
		return (prob,tagArray)
	else:
		x = prob.index("[asy]")
		y = prob.index("[/asy]") + 6
		tag = contest + "_" + str(imageIndex)
		tagArray = tagArray + [tag]
		imageTag = " [img] " + tag + " [/img] "
		imageIndex = imageIndex + 1
		asyCode = prob[x:y]
		asyToImage(asyCode, tag)
		newProb = prob[:x] + imageTag + prob[y:]
		return getAsy(newProb, contest, tagArray)

def asyToImage(asy, tag):
	fileName = "asyfiles/"+ tag + ".asy"
	asyfile = open(fileName,"w")
	asyfile.write(asy)
	### WRITE THE IMAGE FILE THING HERE###### call(["ls", "-l"])
	### get the asy directory, get the asy file from this directly, save to imagefiles/tag.png or tag.whatever
	os.remove(fileName)


if __name__ == '__main__':
	getAll("amc8")
	getAll("amc10")
	getAll("amc12")
	getAll("ahsme")
	getAll("usamo")
	getAll("usajmo")
	getAll("putnam")
	print("Done!")
