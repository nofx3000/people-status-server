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
      return new ErrorModel("添加record失败");
    }
  }
  async editRecord(data: any) {
    try {
    } catch (error) {
      return new ErrorModel("修改记录失败");
    }
  }
  async deleteRecord(id: number) {
    try {
    } catch (error) {
      return new ErrorModel("删除记录失败");
    }
  }
}

export default RecordController.RecordController;
