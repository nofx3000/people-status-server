import { Context, Next } from "koa";
import UnitService from "../service/UnitService";
import { SuccessModel, ErrorModel } from "../resmodel/ResModel";

const router = require("koa-router")();

router.prefix("/api");

router.get("/", async (ctx: Context, next: Next) => {
  ctx.body = {
    title: "koa2",
  };
});

export default router;
