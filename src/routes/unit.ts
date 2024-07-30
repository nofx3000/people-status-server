import { Context } from "koa";
import UnitController from "../controller/UnitController";
const router = require("koa-router")();
router.prefix("/api/unit");
router.get("/", async (ctx: Context) => {
  const res = await UnitController.getAllUnits();
  ctx.body = res;
});
// router.post("/", async (ctx: Context) => {
//     const data: UnitInter = ctx.request.body as any;
//     const res = await UnitController.addUnit(data);
//     ctx.body = res;
// });
// router.put("/:id", async (ctx: Context) => {
//     const data: UnitInter = ctx.request.body as any;
//     const res = await UnitController.editUnit(data);
//     ctx.body = res;
// });
// router.delete("/:id", async (ctx: Context) => {
//     const id = ctx.params.id;
//     const res = await UnitController.deleteUnit(id);
//     ctx.body = res;
// });
export default router;
