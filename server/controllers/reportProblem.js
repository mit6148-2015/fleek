var fs = require('fs');

function reportProblem(req, res) {

    // append reported ID to text file
    fs.appendFile("public/assets/reportedProblems.txt", req.body.params.id + "\n", function(err) {
        if(err) {
            console.log(err);
        } else {
            res.send(req.body.params.id); // respond with ID as confirmation
        }
    }); 
}

module.exports = reportProblem;