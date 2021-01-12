/** Express app. */

const express = require("express");
const morgan = require("morgan");
//  import route files from "./routes/FILE_NAME"
const cors = require("cors");

const app = express();

app.use(morgan("tiny"));
app.use(express.json());
app.use(cors());

// assign paths to imported files here
app.use("URL PATH", importedRoutesFile);


/** 404 Not Found handler. */

app.use(function (req, res, next) {
  const err = new Error("Not Found");
  err.status = 404;
  next(err);
});

/** Generic error handler. */

app.use(function (err, req, res, next) {
  if (err.stack) console.error(err.stack);

  res.status(err.status || 500).json({
    message: err.message,
  });
});


module.exports = app;
