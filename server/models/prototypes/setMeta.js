setMeta = {};


setMeta['amc8'] = function () {
    this.pattern = 'AMC 8';
};


setMeta['amc10'] = function () {
    this.pattern = 'AMC 10';
};


setMeta['amc12'] = function () {
    this.pattern = 'AMC 12';
};


setMeta['aime'] = function () {
    this.pattern = 'AIME';
};


setMeta['usamo'] = function (year, numProblems) {
    this.setPattern = 'USAMO';
    this.setInstance = String(year);
    this.numProblems = parseInt(numProblems);
};


module.exports = setMeta;