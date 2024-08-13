import path from "path";
import mime from "mime-types";
import fs from "fs";
import fse from "fs-extra";

import { SuccessModel, ErrorModel } from "../resmodel/ResModel";

const DIST_FILE_PATH = path.join(__dirname, "..", "uploadFiles");
//@ts-ignore
fse.pathExists(DIST_FILE_PATH).then((exist) => {
  if (exist) {
    fse.ensureDir(DIST_FILE_PATH);
  }
});
//@ts-ignore
async function saveFile({ size, filePath, name, type }) {
  const fileName = Date.now() + name;
  const distFilePath = path.join(DIST_FILE_PATH, fileName);
  await fse.move(filePath, distFilePath);
  return new SuccessModel({
    url: "/" + fileName,
  });
}
//@ts-ignore
async function readFile(url) {
  let filePath = path.join(__dirname, "..", "uploadFiles", url);
  let file = null;
  try {
    file = fs.readFileSync(filePath);
  } catch (error) {
    filePath = path.join(__dirname, "..", "uploadFiles", "default.jpeg");
    file = fs.readFileSync(filePath);
  }
  let mimeType = (mime as any).lookup(filePath);
  return {
    mimeType,
    file,
  };
}

module.exports = {
  saveFile,
  readFile,
};
