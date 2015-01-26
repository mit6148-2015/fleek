#!/bin/sh

mongoexport --db fleekdb --collection problems --out ../collections/problems.json
mongoexport --db fleekdb --collection sets --out ../collections/sets.json