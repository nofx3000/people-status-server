import { Context, Next } from "koa";
import LLMController from "../controller/LLMController";

const router = require("koa-router")();

router.prefix("/api/llm");

router.post(`/get-advice`, async (ctx: Context, next: Next) => {
  await LLMController.getAdvice(ctx);
});
router.post(`/get-risk-level`, async (ctx: Context, next: Next) => {
  await LLMController.getRiskLevel(ctx);
});

export default router;
