const _ = require('lodash');

const log = (str) => {
    console.log(str);
};

const shuffle = (arr) => {
    return _.shuffle(arr);
}

module.exports = {
    log,
    shuffle,
};
