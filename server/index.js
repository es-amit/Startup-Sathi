const express = require("express");
const mongoose = require("mongoose");
const authRouter = require("./routes/auth");
const cors = require("cors");

const PORT = process.env.PORT || 3000;
const app = express();

app.use(cors());

app.use(express.json());
app.use(authRouter);

const DB = "mongodb+srv://es_amit:9999100158@cluster0.0jeogut.mongodb.net/";

mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection successful");
  })
  .catch((err) => console.log("No connection"));

app.listen(PORT, "0.0.0.0", () => {
  console.log(`Server is running on port ${PORT}`);
});
