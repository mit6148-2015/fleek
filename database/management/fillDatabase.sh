echo 'Filling problems collection...'
node ./amc8.js
node ./amc8answers.js
node ./amc10.js
node ./amc10answers.js
node ./ahsme.js
node ./ahsmeanswers.js
node ./amc12.js
node ./amc12answers.js
node ./aime.js
node ./aimeanswers.js
node ./usajmo.js
node ./usamo.js
node ./putnam.js
node ./scibowl.js
echo 'Exporting problems JSON...'
mongoexport --db fleekdb --collection problems --out ../collections/problems.json
echo 'Filling sets collection...'
node ./addSetsFromProblems.js
echo 'Exporting sets JSON...'
mongoexport --db fleekdb --collection sets --out ../collections/sets.json
echo 'Done!'
