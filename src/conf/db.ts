import { SequelizeOptions } from "sequelize-typescript";
import mysql2 from "mysql2";

export const MYSQL_CONF: SequelizeOptions = {
  host: "127.0.0.1",
  // docker
  // host: "mysql",
  username: "root",
  password: "root",
  port: 3306,
  database: "people_status",
  dialect: "mysql",
  dialectModule: mysql2,
  logging: false,
  timezone: "+08:00",
  // models: [path.join(__dirname, "..", "/db/models/*.model.ts")],
};
