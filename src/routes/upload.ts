import Router from "koa-router";
const router = new Router();

router.prefix("/api/upload");

const { saveFile, readFile } = require("../controller/upload");

const koaForm = require("formidable-upload-koa");

router.post("/avatar", koaForm(), async (ctx, next) => {
  const file = (ctx.req as any).files.avatar;
  //   console.log("---", Object.values(ctx.req.files)[0]);
  //   const file = Object.values(ctx.req.files)[0];
  console.log("===========", file);

  const { size, path, name, type } = file;
  ctx.body = await saveFile({
    size,
    filePath: path,
    name,
    type,
  });
});

router.get("/avatar/:url", async (ctx, next) => {
  const url = ctx.params.url;
  const { mimeType, file } = await readFile(url);
  ctx.set("content-type", mimeType);
  ctx.body = file;
});

export default router;
