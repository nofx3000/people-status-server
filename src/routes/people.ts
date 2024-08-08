import { Context } from "koa";
import PeopleController from "../controller/PeopleController";

const router = require("koa-router")();

router.prefix("/api/people");

router.get("/all", async (ctx: Context) => {
  const res = await PeopleController.getPeopleInfoWithEverything();
  ctx.body = res;
});

router.get("/:unitId", async (ctx: Context) => {
  const unitId = ctx.params.unitId;
  ctx.body = await PeopleController.getPeopleInfoByUnit(unitId);
});

router.post("/add", async (ctx: Context) => {
  const personInfo: PersonInfoInter = ctx.request.body as any;
  const res = await PeopleController.addOnePerson(personInfo);
  ctx.body = res;
});

router.del("/del/:id", async (ctx: Context) => {
  const id = ctx.params.id;
  ctx.body = await PeopleController.delOnePerson(id);
});

router.put("/edit/:id", async (ctx: Context) => {
  const id = ctx.params.id;
  const personInfo: PersonInfoInter = ctx.request.body as any;
  const res = await PeopleController.editOnePerson(id, personInfo);
  ctx.body = res;
});

router.get("/person/:id", async (ctx: Context) => {
  const id = ctx.params.id;
  const res = await PeopleController.getPersonInfo(id);
  ctx.body = res;
});

export default router;
