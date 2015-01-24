var path = require('path');

function returnIndex (req, res, next) {
    res.sendFile(path.join(__dirname, '../../public/views/index.html'));
    next();
};

module.exports = returnIndex;