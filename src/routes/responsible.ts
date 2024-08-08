import { Context } from "koa";
import ResponsibleController from "../controller/ResponsibleController";
const router = require("koa-router")();
router.prefix("/api/responsible");

router.get("/all", async (ctx: Context) => {
  const res = await ResponsibleController.getAllResponsibles();
  ctx.body = res;
});

router.get("/:id", async (ctx: Context) => {
  const id = ctx.params.id;
  ctx.body = await ResponsibleController.getResponsibleById(id);
});

router.get("/unit/:id", async (ctx: Context) => {
  const id = ctx.params.id;
  ctx.body = await ResponsibleController.getResponsibleByUnitId(id);
});

router.post("/add", async (ctx: Context) => {
  const responsibleInfo = ctx.request.body as any;
  const res = await ResponsibleController.addResponsible(responsibleInfo);
  ctx.body = res;
});

router.del("/del/:id", async (ctx: Context) => {
  const id = ctx.params.id;
  ctx.body = await ResponsibleController.deleteResponsible(id);
});

router.put("/edit/:id", async (ctx: Context) => {
  const id = ctx.params.id;
  const responsibleInfo = ctx.request.body as any;
  const res = await ResponsibleController.editResponsible(id, responsibleInfo);
  ctx.body = res;
});

export default router;
