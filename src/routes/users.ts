import { Context } from "koa";
import UserController from "../controller/UserController";
import { jwtCheck } from "../meddleware/jwt-check";
import { SuccessModel, ErrorModel } from "../resmodel/ResModel";

const router = require("koa-router")();

router.prefix("/api/users");

router.post("/login", async (ctx: Context) => {
  const { username, password } = ctx.request.body as any;
  const res = await UserController.login({ username, password });
  if (res instanceof ErrorModel) {
    ctx.status = 401;
  }
  ctx.body = res;
});

router.get("/verify1", async (ctx: Context) => {
  const token = ctx.header.authorization;
  if (!token) {
    ctx.status = 401;
    ctx.body = new ErrorModel(401, "no token");
    return;
  }
  const res = await UserController.verify(token);
  if (res instanceof ErrorModel) {
    ctx.status = 401;
  }
  ctx.body = res;
});

router.post("/create", jwtCheck, async (ctx: Context) => {
  const userinfo: any = ctx.request.body as any;
  ctx.body = await UserController.createUser(userinfo);
});

// 获取用户最后登录时间
router.get("/last-login/:userId", async (ctx: Context) => {
  const userId = parseInt(ctx.params.userId);
  const res = await UserController.getUserLastLogin(userId);
  ctx.body = res;
});

// 手动更新用户最后登录时间
router.put("/last-login/:userId", async (ctx: Context) => {
  try {
    const userId = parseInt(ctx.params.userId);
    const res = await UserController.updateUserLastLogin(userId);
    ctx.body = res;
  } catch (error) {
    console.log(error);
  }
});

export default router;
