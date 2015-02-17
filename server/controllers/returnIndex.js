var path = require('path');

function returnIndex (req, res, next) {
    // repsond with index.html and call next function
    res.sendFile(path.join(__dirname, '../../public/views/index.html'));
    next();
};

module.exports = returnIndex;