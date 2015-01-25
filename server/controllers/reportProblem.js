var fs = require('fs');
var pathToOutput = '../../public/assets/reportedProblems.txt'

function reportProblem(req, res) {
    var problemId = String(req.body.id);
    fs.appendFile(pathToOutput, problemId, function(err) {
        if (err)
            console.log(err);

        res.send(problemId);
    })
}

module.exports = reportProblem;