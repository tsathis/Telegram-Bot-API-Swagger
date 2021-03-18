import express, { Request, Response } from 'express';

const swaggerUi = require('swagger-ui-express');
const swaggerDocument = require(`${__dirname}/../swagger/JosXa-telegram-bot_api-5.0.0-swagger.json`);

console.log("Started!");

const app = express();

app.get("/ping", (req: Request, res: Response) => { res.json({ "Status": "OK" }); });

app.use('/', swaggerUi.serve, swaggerUi.setup(swaggerDocument));

const PORT_NUMBER = 3000;
app.listen(process.env.PORT || PORT_NUMBER, function () {
  console.log(`Listening on https://localhost:${process.env.PORT || PORT_NUMBER}`);
});