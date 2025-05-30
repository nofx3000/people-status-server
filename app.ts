import { Next, Context } from "koa";
import Koa from "koa";
const app = new Koa();
// const views = require("koa-views");
import json from "koa-json";
// const onerror = require("koa-onerror");
import bodyparser from "koa-bodyparser";
import logger from "koa-logger";
import koa_static from "koa-static";
import cors from "koa-cors";
// import jwtKoa from "koa-jwt";
// import { SECRET_KEY } from "./src/conf/jwt";

import index from "./src/routes/index";
import users from "./src/routes/users";
import menu from "./src/routes/menu";
import people from "./src/routes/people";
import record from "./src/routes/record";
import problem from "./src/routes/problem";
import upload from "./src/routes/upload";
import unit from "./src/routes/unit";
import summary from "./src/routes/summary";
import responsible from "./src/routes/responsible";
import record_development from "./src/routes/record_development";
import llm from "./src/routes/llm";

// app.use(
//   jwtKoa({
//     secret: SECRET_KEY,
//   }).unless({
//     path: [
//       /^\/users\/login/,
//       // /^\/users\/create/,
//       /^\/users\/verify/,
//       /^\/menu/,
//     ],
//   })
// );

// error handler
// onerror(app);

// middlewares
app.use(
  cors({
    origin: "*",
    // credentials: true,
    methods: ["GET", "POST", "PUT", "DELETE", "OPTIONS"],
    headers: ["Content-Type", "Authorization", "Accept", "X-Requested-With" ],
    maxAge: 86400,
  })
);

app.use(
  bodyparser({
    enableTypes: ["json", "form", "text"],
  })
);
app.use(json());
app.use(logger());
app.use(koa_static(__dirname + "/public"));

// logger
app.use(async (ctx: Context, next: Next) => {
  const start = new Date();
  await next();
  const ms = new Date().valueOf() - start.valueOf();
  console.log(`${ctx.method} ${ctx.url} - ${ms}ms`);
});

// routes
app.use(index.routes());
app.use(index.allowedMethods());
app.use(users.routes());
app.use(users.allowedMethods());
app.use(menu.routes());
app.use(menu.allowedMethods());
app.use(people.routes());
app.use(people.allowedMethods());
app.use(record.routes());
app.use(record.allowedMethods());
app.use(problem.routes());
app.use(problem.allowedMethods());
app.use(upload.routes());
app.use(upload.allowedMethods());
app.use(unit.routes());
app.use(unit.allowedMethods());
app.use(summary.routes());
app.use(summary.allowedMethods());
app.use(responsible.routes());
app.use(responsible.allowedMethods());
app.use(record_development.routes());
app.use(record_development.allowedMethods());
app.use(llm.routes());
app.use(llm.allowedMethods());

// error-handling
app.on("error", (err: Error, ctx: Context) => {
  console.error("server error", err, ctx);
});

export default app;
