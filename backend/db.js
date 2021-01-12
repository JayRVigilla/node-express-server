/** Database connection for BACKEND_TEMPLATE. */

const { Client } = require("pg");
// const { Pool } = require("pg");

const client = new Client({
  // const client = new Pool({
connectionString: process.env.DATABASE_URL || "postgresql:///DATABASE_NAME",
 ssl: process.env.DATABASE_URL ? { rejectUnauthorized: false} : false
}
);

client.connect();

module.exports = client;
