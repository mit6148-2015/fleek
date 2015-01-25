var fs = require('fs');

function reportProblem(req, res) {
    fs.appendFile("public/assets/reportedProblems.txt", req.body.params.id + "\n", function(err) {
        if(err) {
            console.log(err);
        } else {
            res.send(req.body.params.id);
        }
    }); 
}

module.exports = reportProblem;