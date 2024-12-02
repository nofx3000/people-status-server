import { Context } from "koa";
import SummaryController from "../controller/SummaryController";
import PeopleController from "../controller/PeopleController";
import RecordController from "../controller/RecordController";

const router = require("koa-router")();
router.prefix("/api/summary");

router.get("/radar/:unitId", async (ctx: Context) => {
  const unitId: number = ctx.params.unitId;
  console.log("++++++++++++++++++++++++++++++++++++++++++++++++", unitId);
  const res = await SummaryController.getRadar(unitId);
  ctx.body = res;
});

router.get("/line/:unitId/:month", async (ctx: Context) => {
  const month: number = ctx.params.month;
  const unitId: number = ctx.params.unitId;
  const res = await SummaryController.getLine(unitId, month);
  ctx.body = res;
});

router.get("/updates/:lastLogin", async (ctx: Context) => {
  const lastLogin = ctx.params.lastLogin;
  console.log("======", lastLogin);
  try {
    // const [peopleRes, recordRes] = await Promise.all([
    //   PeopleController.getPeopleUpdatedAfter(lastLogin),
    //   RecordController.getRecordsUpdatedAfter(lastLogin),
    // ]);
    const res = await RecordController.getRecordsUpdatedAfter(lastLogin);
    ctx.body = res;
  } catch (error) {
    console.log(error);
  }
});

export default router;
