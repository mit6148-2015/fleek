#!/bin/sh

mongo ds031581.mongolab.com:31581/heroku_app33293451 -u fleek -p $1 --eval "db.problems.drop()"
mongo ds031581.mongolab.com:31581/heroku_app33293451 -u fleek -p $1 --eval "db.sets.drop()"

mongoimport -h ds031581.mongolab.com:31581 -d heroku_app33293451 -c problems -u fleek -p $1 --file ../collections/problems.json
mongoimport -h ds031581.mongolab.com:31581 -d heroku_app33293451 -c sets -u fleek -p $1 --file ../collections/sets.json

mongo ds031581.mongolab.com:31581/heroku_app33293451 -u fleek -p $1 --eval "db.problems.ensureIndex({'statement':'text'})"