import { Context } from "koa";
import RecordController from "../controller/RecordController";

const router = require("koa-router")();

router.prefix("/api/record");

router.get("/person/:id", async (ctx: Context) => {
  const id = ctx.params.id;
  ctx.body = await RecordController.getRecordByPersonId(id);
});
router.get("/unit/:id", async (ctx: Context) => {
  const id = ctx.params.id;
  ctx.body = await RecordController.getUnsolovedRecordByUnitId(id);
});

router.get("/unit/:id/solved", async (ctx: Context) => {
  const id = ctx.params.id;
  ctx.body = await RecordController.getSolovedRecordByUnitId(id);
});
// router.get("/unit/nofix/:id", async (ctx: Context) => {
//   const id = ctx.params.id;
//   ctx.body = await RecordController.getRecordByUnitIdNofix(id);
// });

router.get("/:id", async (ctx: Context) => {
  const id = ctx.params.id;
  ctx.body = await RecordController.getRecordId(id);
});
router.post("/add", async (ctx: Context) => {
  const data: RecordInter = ctx.request.body as any;
  const res = await RecordController.addRecord(data);
  ctx.body = res;
});
router.put("/:id", async (ctx: Context) => {
  const data: RecordInter = ctx.request.body as any;
  const id = ctx.params.id;
  data.id = id;
  const res = await RecordController.editRecord(data);
  ctx.body = res;
});
router.delete("/:id", async (ctx: Context) => {
  const id = ctx.params.id;
  ctx.body = await RecordController.deleteRecord(id);
});

export default router;
