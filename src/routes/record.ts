import { Context } from "koa";
import RecordController from "../controller/RecordController";
import { SuccessModel, ErrorModel } from "../resmodel/ResModel";

const router = require("koa-router")();

router.prefix("/api/record");

//--pass--
router.get("/person/:id", async (ctx: Context) => {
  const id = ctx.params.id;
  ctx.body = await RecordController.getRecordByPersonId(id);
});
router.get("/unit/:id", async (ctx: Context) => {
  const id = ctx.params.id;
  ctx.body = await RecordController.getRecordByUnitId(id);
});
//--pass--
router.get("/:id", async (ctx: Context) => {
  const id = ctx.params.id;
  ctx.body = await RecordController.getRecordId(id);
});
//--pass--
router.post("/add", async (ctx: Context) => {
  const data: RecordInter = ctx.request.body as any;
  const res = await RecordController.addRecord(data);
  ctx.body = res;
});
//--pass--
router.put("/:id", async (ctx: Context) => {
  const data: RecordInter = ctx.request.body as any;
  const id = ctx.params.id;
  data.id = id;
  const res = await RecordController.editRecord(data);
  ctx.body = res;
});
//--pass--
router.delete("/:id", async (ctx: Context) => {
  const id = ctx.params.id;
  ctx.body = await RecordController.deleteRecord(id);
});

export default router;
