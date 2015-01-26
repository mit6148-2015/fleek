#!/bin/sh

mongo fleekdb --eval "db.problems.drop()"
mongo fleekdb --eval "db.sets.drop()"

mongoimport --db fleekdb --collection problems --file ../collections/problems.json
mongoimport --db fleekdb --collection sets --file ../collections/sets.json

mongo fleekdb --eval "db.problems.ensureIndex({'statement':'text'})"