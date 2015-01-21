problemMeta = {};


problemMeta['amc8'] = function (year, problemNumber) {
    this.setPattern = 'AMC 8';
    this.setInstance = String(year);
    this.setIndex = parseInt(problemNumber);
    this.response = 'multipleChoice';
};


problemMeta['amc10'] = function () {
    this.setPattern = 'AMC 10';
};


problemMeta['amc12'] = function () {
    this.setPattern = 'AMC 12';
};


problemMeta['aime'] = function (year, yearModifier, problemNumber) {
    this.setPattern = 'AIME';
    this.setInstance = String(year) + String(yearModifier);
    this.setIndex = parseInt(problemNumber);
    this.response = 'integerAnswer';
};


problemMeta['usamo'] = function (year, problemNumber) {
    this.setPattern = 'USAMO';
    this.setInstance = String(year);
    this.setIndex = parseInt(problemNumber);
    this.response = 'noResponse';
};


module.exports = problemMeta;