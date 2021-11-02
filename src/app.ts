import express, { Application } from "express";

const port = 6700;

const app: Application = express();

app.get("/", (req, res) => {
  res.send("Hello from project one test");
});

app.listen(port, () => console.log(`App listening on port ${port}`));
