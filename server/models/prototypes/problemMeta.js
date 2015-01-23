problemMeta = {};


problemMeta['amc8'] = function (year, problemNumber) {
    this.setPattern = 'AMC 8';
    this.setInstance = String(year);
    this.setIndex = parseInt(problemNumber) - 1;
    this.response = 'multipleChoice';
};


problemMeta['amc10'] = function (year, yearModifier, problemNumber) {
    this.setPattern = 'AMC 10';
    this.setInstance = (String(year) + " " + String(yearModifier)).trim();
    this.setIndex = parseInt(problemNumber) - 1;
    this.response = 'multipleChoice';
};


problemMeta['amc12'] = function (year, yearModifier, problemNumber) {
    this.setPattern = 'AMC 12';
    this.setInstance = (String(year) + " " + String(yearModifier)).trim();
    this.setIndex = parseInt(problemNumber) - 1;
    this.response = 'multipleChoice';
};


problemMeta['aime'] = function (year, yearModifier, problemNumber) {
    this.setPattern = 'AIME';
    this.setInstance = (String(year) + " " + String(yearModifier)).trim();
    this.setIndex = parseInt(problemNumber) - 1;
    this.response = 'integerAnswer';
};


problemMeta['usamo'] = function (year, problemNumber) {
    this.setPattern = 'USAMO';
    this.setInstance = String(year);
    this.setIndex = parseInt(problemNumber) - 1;
    this.response = 'noResponse';
};


problemMeta['usajmo'] = function (year, problemNumber) {
    this.setPattern = 'USAJMO';
    this.setInstance = String(year);
    this.setIndex = parseInt(problemNumber) - 1;
    this.response = 'noResponse';
};


problemMeta['putnam'] = function (year, portion, problemNumber) {
    this.setPattern = 'Putnam';
    this.setInstance = String(year);
    if (portion === 'B') {
        this.setIndex = parseInt(problemNumber)+5;
    } else { // portion is A, or missing
        this.setIndex = parseInt(problemNumber)-1;
    }
    this.response = 'noResponse';
};


module.exports = problemMeta;