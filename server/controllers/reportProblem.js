var fs = require('fs');

function reportProblem(req, res) {
    fs.appendFile("../../public/assets/reportedProblems.txt", req.body.id, function(err) {
        if(err) {
            console.log(err);
        } else {
            res.send(req.body.id);
        }
    }); 
}

module.exports = reportProblem;