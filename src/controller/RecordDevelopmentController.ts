import RecordDevelopmentService from "../service/RecordDevelopmentService";
import RecordService from "../service/RecordService";
import { SuccessModel, ErrorModel } from "../resmodel/ResModel";

class RecordDevelopmentController {
  static RecordDevelopmentController: RecordDevelopmentController =
    new RecordDevelopmentController();

  async addRecordDevelopment(data: RecordDevelopmentInter) {
    if (!data)
      throw Error(
        "RecordDevelopmentController的addRecordDevelopment没有收到RecordDevelopment的Data"
      );
    try {
      const record_id = await RecordDevelopmentService.createRecordDevelopment(
        data
      );
      if (record_id) {
        await RecordService.updateRecordUpdateDate(data.record_id as number);
        console.log(`Record：${data.record_id}，更新时间为${new Date()}`);
        return new SuccessModel(record_id);
      }
    } catch (error) {
      console.error("添加RecordDevelopment失败:", error);
      return new ErrorModel("添加RecordDevelopment失败");
    }
  }

  async editRecordDevelopment(id: number, data: RecordDevelopmentInter) {
    try {
      const result = await RecordDevelopmentService.updateRecordDevelopment(
        id,
        data
      );
      if (result) {
        return new SuccessModel(result);
      }
    } catch (error) {
      return new ErrorModel("修改RecordDevelopment失败");
    }
  }

  async deleteRecordDevelopment(id: number) {
    try {
      const result = await RecordDevelopmentService.destroyRecordDevelopment(
        id
      );
      if (result) {
        return new SuccessModel(result);
      }
    } catch (error) {
      return new ErrorModel("删除RecordDevelopment失败");
    }
  }
}

export default RecordDevelopmentController.RecordDevelopmentController;
