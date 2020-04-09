'use strict';

const logger = require('@codephobia/logger');

exports.handler = async function (event, context) {
    logger.log(`envkey: ${process.env.ENVKEY}`);
    return logger.shuffle([1, 2, 3, 4, 5, 6]);
}
