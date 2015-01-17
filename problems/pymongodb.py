from pymongo import MongoClient
import xlrd

client = MongoClient()
db = client['fleekDB']
collection = db['mathProbs']

def addProblems(wb, wk):
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
		problem = worksheet.cell_value(curr_row, 2)
		choices = []
		contest_type = "multiple-choice"
		if "AIME" in str(contest_name):
			contest_type = "short-answer"
		if "USAMO" in str(contest_name) or "utnam" in str(contest_name):
			contest_type = "proof"
		if "AMC" in contest_name or "AHS" in contest_name:
			choiceA = worksheet.cell_value(curr_row, 3)
			choiceB = worksheet.cell_value(curr_row, 4)
			choiceC = worksheet.cell_value(curr_row, 5)
			choiceD = worksheet.cell_value(curr_row, 6)
			choiceE = worksheet.cell_value(curr_row, 7)
			choices = [choiceA, choiceB, choiceC, choiceD, choiceE]
		else:
			choices = []
		collection.insert({"year": year, "name": contest_name, "problem_number": probNum, "answer_type": contest_type, "choices":choices})
		print(str(year) + " " + str(contest_name) + " #" + str(probNum) + " " + str(contest_type))
		curr_row = curr_row + 1

if __name__ == '__main__':
	addProblems('aime_probs.xls','AIME Problems')
	addProblems('amc12_probs.xls','AMC 12 Problems')
	addProblems('amc12_probs_2.xls','AMC 12 Problems')
	addProblems('amc8_probs.xls','AMC 8 Problems')
	addProblems('usamo_probs.xls','USAMO Problems')
	addProblems('putnam_probs.xls','USAMO Problems')


