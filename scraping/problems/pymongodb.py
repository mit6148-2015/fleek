from pymongo import MongoClient
import xlrd

client = MongoClient()
db = client['fleekDB']
collection = db['mathProbs']


allTags = {}

def getTags(): 
	global allTags
	workbook = xlrd.open_workbook('tags.xls')
	worksheet = workbook.sheet_by_name('tags')
	num_rows = worksheet.nrows - 1
	num_cells = worksheet.ncols - 1
	curr_row = 1
	while curr_row < num_rows:
		tag = worksheet.cell_value(curr_row, 0)
		t1 = worksheet.cell_value(curr_row, 1)
		t2 = worksheet.cell_value(curr_row, 2)
		t3 = worksheet.cell_value(curr_row, 3)
		currTags = [str(t1), str(t2), str(t3)]
		allTags[str(tag)] = [x for x in currTags if x != "NONE"]
		curr_row = curr_row + 1

def addProblems(wb, wk):
	global allTags
	workbook = xlrd.open_workbook(wb)
	worksheet = workbook.sheet_by_name(wk)
	num_rows = worksheet.nrows - 1
	num_cells = worksheet.ncols - 1
	curr_row = 1
	while curr_row < num_rows:
		row = worksheet.row(curr_row)
		#print('Row:', curr_row)
		curr_cell = 0
		contest_name = worksheet.cell_value(curr_row, 0)
		year = worksheet.cell_value(curr_row, 1)
		probNum = worksheet.cell_value(curr_row, 2)
		problem = worksheet.cell_value(curr_row, 3)
		choices = []
		contest_type = "multiple-choice"
		if "AIME" in str(contest_name):
			contest_type = "short-answer"
		if "USAMO" in str(contest_name) or "utnam" in str(contest_name):
			contest_type = "proof"
		if "AMC" in contest_name or "AHS" in contest_name:
			choiceA = worksheet.cell_value(curr_row, 4)
			choiceB = worksheet.cell_value(curr_row, 5)
			choiceC = worksheet.cell_value(curr_row, 6)
			choiceD = worksheet.cell_value(curr_row, 7)
			choiceE = worksheet.cell_value(curr_row, 8)
			choices = [choiceA, choiceB, choiceC, choiceD, choiceE]
		else:
			choices = []

		probTags = []

		for x in allTags:
			if x in problem:
				probTags = probTags + allTags[x]

		removeDup = []

		for x in probTags:
			if x not in removeDup:
				removeDup = removeDup + [x]

		collection.insert({"year": year, "name": contest_name, "problem_number": probNum, "answer_type": contest_type, "choices":choices, "tags":removeDup, "source":"http://www.artofproblemsolving.com/Forum/resources.php"})
		print(str(year) + " " + str(contest_name) + " #" + str(probNum) + " " + str(contest_type) + " ")
		print(removeDup)
		curr_row = curr_row + 1

if __name__ == '__main__':
	getTags()
	addProblems('aime_probs.xls','AIME Problems')
	addProblems('amc12_probs.xls','AMC 12 Problems')
	addProblems('amc12_probs_2.xls','AMC 12 Problems')
	addProblems('amc8_probs.xls','AMC 8 Problems')
	addProblems('usamo_probs.xls','USAMO Problems')
	addProblems('putnam_probs.xls','USAMO Problems')
