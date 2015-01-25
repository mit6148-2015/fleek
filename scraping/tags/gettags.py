import json

out_file = open("alltags.json","w")
def getTagArray():
	# All AIME links follow this format: just add the year.
	file_open = "tags.json"
	tags = {}
	with open(file_open, 'r+') as f:
	    data = json.load(f)
	    #print(data)
	    for x in data:
	    	print(x)
	    	for y in data[x]:
	    		if y not in tags:
	    			tags[y]=[x]
	    		if y in tags:
	    			if x not in tags[y]:
	    				tags[y] = tags[y] + [x]
	for x in tags:
	    data = {'tag':x, 'parentTags':tags[x]}
	    json.dump(data,out_file, separators=(',', ': ')) 
	    out_file.write("\n")
	out_file.write("{\"parentTags\": [],\"tag\": \"math\"}\n");
	print(tags)

# Use the main function to get the AIME problems for any year.
if __name__ == '__main__':
	getTagArray()