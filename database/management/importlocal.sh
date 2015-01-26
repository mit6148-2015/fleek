#!/bin/sh

mongo fleekdb --eval "db.problems.drop()"
mongo fleekdb --eval "db.sets.drop()"
mongo fleekdb --eval "db.tags.drop()"

mongoimport --db fleekdb --collection problems --file ../collections/problems.json
mongoimport --db fleekdb --collection sets --file ../collections/sets.json
mongoimport --db fleekdb --collection sets --file ../collections/tags.json

mongo fleekdb --eval "db.problems.ensureIndex({'statement':'text'})"