import { Context } from "koa";
import SummaryController from "../controller/SummaryController";
const router = require("koa-router")();
router.prefix("/api/summary");
router.get("/radar/:unitId", async (ctx: Context) => {
  const unitId: number = ctx.params.unitId;
  const res = await SummaryController.getRadar(unitId);
  ctx.body = res;
});

router.get("/line/:unitId/:month", async (ctx: Context) => {
  const month: number = ctx.params.month;
  const unitId: number = ctx.params.unitId;
  const res = await SummaryController.getLine(unitId, month);
  ctx.body = res;
});

export default router;
