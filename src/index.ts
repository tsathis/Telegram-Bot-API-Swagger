import express, { Request, Response } from 'express';
import { css } from './css';

const swaggerUi = require('swagger-ui-express');
const swaggerDocument = require(`${__dirname}/../swagger/JosXa-telegram-bot_api-5.0.0-swagger.json`);

console.log("Started!");

const app = express();

app.get("/ping", (req: Request, res: Response) => { res.json({ "Status": "OK" }); });

let options = {
  customCss: css
};
app.use('/', swaggerUi.serve, swaggerUi.setup(swaggerDocument, options));

const PORT_NUMBER = 3000;
app.listen(process.env.PORT || PORT_NUMBER, function () {
  console.log(`Listening on https://localhost:${process.env.PORT || PORT_NUMBER}`);
});