/** API routes for SOMETHING. */

const db = require("../db");
const express = require("express");
const router = new express.Router();

/** GET /   get SOMETHING
 *
 * Returns:
 * () => {
 *
 *        }
 *
 */

router.get("/", async function (req, res, next) {
  try {
    const result = await db.query(
      `
      SQL QUERY HERE
      `
    );
    return res.json(result.rows);
  } catch (err) {
    return next(err);
  }
});

/** GET /[COL]  get detail on post w/comments
 *
 *
 * (col) =>   {
 *            }
 */

router.get("/:COL", async function (req, res, next) {
  try {
    const result = await db.query(
      `
      SQL QUERY HERE
      `, [req.params.COL]
    );
    return res.json(result.rows[0]);
  } catch (err) {
    return next(err);
  }
});


/** POST / CREATE SOMETHING
 *
 * (data) => {
 *            }
 *
 */

router.post("/", async function (req, res, next) {
  try {
    const result = await db.query(
      `
      SQL QUERY HERE
      `,
      []);
    return res.json(result.rows[0]);
  } catch (err) {
    return next(err);
  }
});

/** PUT /[id]     update existing SOMETHING
 *
 * ()  =>  {
 *                                  }
 *
 */

router.put("/", async function (req, res, next) {
  try {
    const result = await db.query(
      `
      SQL QUERY HERE
      `,[]);
    return res.json(result.rows[0]);
  } catch (e) {
    return next(e);
  }
});


/** DELETE /     delete post
 *
 * () => { message: "deleted" }
 *
 */

router.delete("/:VAR", async (req, res, next) => {
  try {
    await db.query("DELETE FROM posts WHERE id = $1", [req.params.VAR]);
    return res.json({ message: "deleted" });
  } catch (err) {
    return next(err);
  }
});


module.exports = router;
