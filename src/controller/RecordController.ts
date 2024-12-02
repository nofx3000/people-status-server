import RecordService from "../service/RecordService";
import { SuccessModel, ErrorModel } from "../resmodel/ResModel";

class RecordController {
  static RecordController: RecordController = new RecordController();
  async getRecordByPersonId(id: number) {
    const menuList = await RecordService.findRecordsByPersonId(id);
    if (menuList) {
      return new SuccessModel(menuList);
    } else {
      return new ErrorModel("not found");
    }
  }

  async getUnsolovedRecordByUnitId(id: number) {
    try {
      const res = await RecordService.findUnsolvedRecordsByUnitId(id);
      if (res) {
        return new SuccessModel(res);
      } else {
        return new ErrorModel("getUnsolovedRecordByUnitId not found");
      }
    } catch (error) {
      return new ErrorModel(
        `getUnsolovedRecordByUnitId失败:${
          error instanceof Error ? error.message : String(error)
        }`
      );
    }
  }
  async getSolovedRecordByUnitId(id: number) {
    try {
      const res = await RecordService.findSolvedRecordsByUnitId(id);
      if (res) {
        return new SuccessModel(res);
      } else {
        return new ErrorModel("getSolovedRecordByUnitId not found");
      }
    } catch (error) {
      return new ErrorModel(
        `getSolovedRecordByUnitId失败:${
          error instanceof Error ? error.message : String(error)
        }`
      );
    }
  }

  async getRecordId(id: number) {
    const record = await RecordService.findOneRecordById(id);
    if (record) {
      return new SuccessModel(record);
    } else {
      return new ErrorModel("not found record");
    }
  }
  async addRecord(data: RecordInter) {
    // 使用RecordService中的createRecord方法，添加record记录，获取record_id
    const record_id = await RecordService.createRecord(data);
    if (record_id) {
      return new SuccessModel(record_id);
    }
    try {
    } catch (error) {
      return new ErrorModel(
        `添加record失败:${
          error instanceof Error ? error.message : String(error)
        }`
      );
    }
  }
  async editRecord(data: RecordInter) {
    try {
      const result = await RecordService.updateRecord(data);
      if (result) {
        return new SuccessModel(result);
      }
    } catch (error) {
      return new ErrorModel(
        `修改记录失败:${error instanceof Error ? error.message : String(error)}`
      );
    }
  }
  async deleteRecord(id: number) {
    try {
      const result = await RecordService.destroyRecord(id);
      if (result) {
        return new SuccessModel(result);
      }
    } catch (error) {
      return new ErrorModel(
        `deleteRecord失败:${
          error instanceof Error ? error.message : String(error)
        }`
      );
    }
  }

  async getRecordsUpdatedAfter(lastLogin: Date) {
    try {
      const records = await RecordService.findRecordsUpdatedAfter(lastLogin);
      return new SuccessModel(records);
    } catch (error) {
      return new ErrorModel(
        `getRecordsUpdatedAfter失败:${
          error instanceof Error ? error.message : String(error)
        }`
      );
    }
  }
}

export default RecordController.RecordController;
