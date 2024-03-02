import express from 'express';
import dotenv from 'dotenv';
const app = express();
dotenv.config({path:'./env'});

app.get('/', (req, res) => res.send('Hello World!'));











const PORT = process.env.PORT;
app.listen(PORT, () => console.log(`Example app listening on port ${PORT}!`));