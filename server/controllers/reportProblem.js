var fs = require('fs');
var pathToOutput = '../../public/assets/reportedProblems.txt'

function reportProblem(req, res) {
    var problemId = String(req.body.id);
    fs.open(pathToOutput, 'a', function(err, fid) {
        if (err)
            console.log(err);

        fs.appendFile(fid, problemId, function(err) {
            if (err)
                console.log(err);

            res.send(problemId);

            fs.close(fid);
        })
    }
}

module.exports = reportProblem;