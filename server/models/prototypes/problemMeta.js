problemMeta = {};


problemMeta['amc8'] = function() {
    this.setPattern = 'AMC 8';
};


problemMeta['amc10'] = function() {
    this.setPattern = 'AMC 10';
};


problemMeta['amc12'] = function() {
    this.setPattern = 'AMC 12';
};


problemMeta['aime'] = function() {
    this.setPattern = 'AIME';

};


problemMeta['usamo'] = function (year, problemNumber) {
    this.setPattern = 'USAMO';
    this.setInstance = String(year);
    this.setIndex = parseInt(problemNumber);
    this.response = 'noResponse';
};


module.exports = problemMeta;