#!/bin/sh

mongo fleekdb --eval "db.problems.update({},{$set: {stats: {solvedCount: 0, attemptedCount: 0}}}, false, true)"
