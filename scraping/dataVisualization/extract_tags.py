import json
import sys
reload(sys)
sys.setdefaultencoding("utf-8")


out_file = open("problems_with_tags.json","w")

alltags = {}

with open("tagslist_with_keywords.json", 'r+') as fff:
        data = json.load(fff)
        for x in data:
                alltags[x["tag"]] = x["keywords"]

#out_file.write("[\n")
f = open("../../database/collections/problems.json", "r")
for line in f:
        line = eval(line)
        pid = line["_id"]
        dictlol = line["meta"]
        contest = dictlol["setPattern"]
        print(dictlol["setInstance"] + " " + dictlol["setPattern"])
        statement = line["statement"]
        if "Science" in contest:
                tags = ["science"]
        else:
                if "amo" in contest or "usajmo" in contest or "utnam" in contest:
                        tags = ["math", "proof"]
                else:
                        tags = ["math"]   
        for y in alltags:
                for word in alltags[y]:
                        if word in statement and y not in tags:
                                tags = tags + [y]
        data = {"_id":pid, "tags":tags}
        json.dump(data,out_file, separators=(',', ': ')) 
        out_file.write("\n")
#out_file.write("]\n")



