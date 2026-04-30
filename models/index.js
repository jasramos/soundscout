"use strict";
let fs = require("fs");
let path = require("path");
let Sequelize = require("sequelize");
let env = "MySQL";
let config = require(path.join(__dirname, '../', 'config', 'config.json'))[env];
config = {
    ...config,
    host: process.env.DB_HOST || config.host,
    username: process.env.DB_USER || config.username,
    password: process.env.DB_PASSWORD || config.password,
    database: process.env.DB_NAME || config.database,
};

let sequelize = new Sequelize(config.database, config.username, config.password, config);
let db = {};
fs
    .readdirSync(__dirname)
    .filter(function (file) {
        return (file.indexOf(".") !== 0) && (file !== "index.js");
    })
    .forEach(function (file) {
        //let model = sequelize.import(path.join(__dirname, file));
        const model = require(path.join(__dirname, file))(sequelize, Sequelize.DataTypes)
        db[model.name] = model;
    });

Object.keys(db).forEach(function (modelName) {
    if ("associate" in db[modelName]) {
        db[modelName].associate(db);
    }
});

db.sequelize = sequelize;

module.exports = db;
