import Router from "koa-router";
import { Context } from "koa";
import RecordDevelopmentController from "../controller/RecordDevelopmentController";

const router = new Router();
router.prefix("/api/record-development");

router.post("/", async (ctx: Context) => {
  const data: RecordDevelopmentInter = ctx.request.body as any;
  const res = await RecordDevelopmentController.addRecordDevelopment(data);
  ctx.body = res;
});

router.get("/", async (ctx: Context) => {
  const res = await RecordDevelopmentController.getTopSixRecordDevelopments();
  ctx.body = res;
});

router.put("/:id", async (ctx: Context) => {
  const data: RecordDevelopmentInter = ctx.request.body as any;
  const res = await RecordDevelopmentController.editRecordDevelopment(
    ctx.params.id,
    data
  );
  ctx.body = res;
});

router.delete("/:id", async (ctx: Context) => {
  const id = ctx.params.id;
  const res = await RecordDevelopmentController.deleteRecordDevelopment(id);
  ctx.body = res;
});

export default router;
