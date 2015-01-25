setMeta = {};


// should all follow this format:
// setMeta['pattern'] = function (instance, numProblems) {}


setMeta['AMC 8'] = function (instance, numProblems) {
    var year = parseInt(instance);
    if (year < 1999) {
        this.name = String(year) + ' AJHSME'; // 1990 AJHSME
    } else {
        this.name = String(year) + ' AMC 8'; // 2000 AMC 8
    }
    this.pattern = 'AMC 8';
    this.instance = String(instance);
    this.numProblems = parseInt(numProblems);
    this.keys = [];
    for(var num = 1; num <= numProblems; num++) {
        this.keys.push('#' + String(num));
    }
    this.response = 'multipleChoice';
};


setMeta['AMC 10'] = function (instance, numProblems) {
    var modifierList = String(instance).split(' ');
    var year = parseInt(modifierList[0]);
    if (modifierList.length == 2) {
        this.name = String(year) + ' AMC 10' + modifierList[1]; // 2010 AMC 10A
    } else {
        this.name = String(year) + ' AMC 10'; // 2000 AMC 10
    }
    this.pattern = 'AMC 10';
    this.instance = String(instance);
    this.numProblems = parseInt(numProblems);
    this.keys = [];
    for(var num = 1; num <= numProblems; num++) {
        this.keys.push('#' + String(num));
    }
    this.response = 'multipleChoice';
};


setMeta['AMC 12'] = function (instance, numProblems) {
    var modifierList = String(instance).split(' ');
    var year = parseInt(modifierList[0]);
    if (year < 2000) {
        this.name = String(year) + ' AHSME'; // 1990 AHSME
    } else {
        if (modifierList.length == 2) {
            this.name = String(year) + ' AMC 12' + modifierList[1]; // 2010 AMC 12A
        } else {
            this.name = String(year) + ' AMC 12'; // 2000 AMC 12
        }
    }
    this.pattern = 'AMC 10';
    this.instance = String(instance);
    this.numProblems = parseInt(numProblems);
    this.keys = [];
    for(var num = 1; num <= numProblems; num++) {
        this.keys.push('#' + String(num));
    }
    this.response = 'multipleChoice';
};


setMeta['AIME'] = function (instance, numProblems) {
    var modifierList = String(instance).split(' ');
    var year = parseInt(modifierList[0]);
    if (modifierList.length == 2) {
        this.name = String(year) + ' AIME ' + modifierList[1]; // 2010 AIME I
    } else {
        this.name = String(year) + ' AIME'; // 2000 AIME
    }
    this.pattern = 'AIME';
    this.instance = String(instance);
    this.numProblems = parseInt(numProblems);
    this.keys = [];
    for(var num = 1; num <= numProblems; num++) {
        this.keys.push('#' + String(num));
    }
    this.response = 'integerAnswer';
};


setMeta['USAMO'] = function (instance, numProblems) {
    var year = parseInt(instance);
    this.name = String(year) + ' USAMO'; // 2010 USAMO
    this.pattern = 'USAMO';
    this.instance = String(instance);
    this.numProblems = parseInt(numProblems);
    this.keys = [];
    for(var num = 1; num <= numProblems; num++) {
        this.keys.push('Problem ' + String(num));
    }
    this.response = 'noResponse';
};


setMeta['USAJMO'] = function (instance, numProblems) {
    var year = parseInt(instance);
    this.name = String(year) + ' USAJMO'; // 2010 USAJMO
    this.pattern = 'USAJMO';
    this.instance = String(instance);
    this.numProblems = parseInt(numProblems);
    this.keys = [];
    for(var num = 1; num <= numProblems; num++) {
        this.keys.push('Problem ' + String(num));
    }
    this.response = 'noResponse';
};


setMeta['Putnam'] = function (instance, numProblems) {
    var year = parseInt(instance);
    this.name = String(year) + ' Putnam'; // 2010 Putnam
    this.pattern = 'Putnam';
    this.instance = String(instance);
    this.numProblems = parseInt(numProblems);
    this.keys = ['A1','A2','A3','A4','A5','A6','B1','B2','B3','B4','B5','B6'];
    this.response = 'noResponse';
};


setMeta['Science Bowl'] = function (instance, numProblems) {
    var year = parseInt(instance);
    this.name = String(year) + ' Putnam'; // 2010 Putnam
    this.pattern = 'Putnam';
    this.instance = String(instance);
    this.numProblems = parseInt(numProblems);
    this.keys = ['A1','A2','A3','A4','A5','A6','B1','B2','B3','B4','B5','B6'];
    this.response = 'noResponse';
};




module.exports = setMeta;