response = {};

response['multipleChoice'] = function (numChoices, keys, choices, correctIndex) {
    this.numChoices = numChoices;
    this.keys = keys;
    this.choices = choices;
    this.correctIndex = correctIndex;
};

response['shortAnswer'] = function (answer) {    
    this.answer = String(answer);
};

response['integerAnswer'] = function (answer) {
    this.answer = parseInt(answer);
};

response['noResponse'] = function () {
    // empty
}

module.exports = response;