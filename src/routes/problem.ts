import Router from "koa-router";
import { Context } from "koa";
import ProblemController from "../controller/ProblemController";

const router = require("koa-router")();

router.prefix("/api/problem");

router.get("/", async (ctx: Context) => {
  const res = await ProblemController.getAllProblems();
  ctx.body = res;
});

router.post("/", async (ctx: Context) => {
  // 从request.body获取post传入的data
  const data: ProblemInter = ctx.request.body as any;
  const res = await ProblemController.addProblem(data);
  ctx.body = res;
});

router.put("/:id", async (ctx: Context) => {
  const data: PersonInfoInter = ctx.request.body as any;
  const res = await ProblemController.editProblem(data);
  ctx.body = res;
});

router.delete("/:id", async (ctx: Context) => {
  const id = ctx.params.id;
  const res = await ProblemController.deleteProblem(id);
  ctx.body = res;
});

export default router;
