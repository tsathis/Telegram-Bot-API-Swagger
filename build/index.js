"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const swaggerUi = require('swagger-ui-express');
const swaggerDocument = require(`${__dirname}/../swagger/JosXa-telegram-bot_api-5.0.0-swagger.json`);
console.log("Started!");
const app = express_1.default();
app.get("/ping", (req, res) => { res.json({ "Status": "OK" }); });
app.use('/', swaggerUi.serve, swaggerUi.setup(swaggerDocument));
const PORT_NUMBER = 3000;
app.listen(process.env.PORT || PORT_NUMBER, function () {
    console.log(`Listening on https://localhost:${process.env.PORT || PORT_NUMBER}`);
});
