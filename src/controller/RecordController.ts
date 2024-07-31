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
  // 对record进行去重，每个人只保留最新的一条记录
  async getRecordByUnitId(id: number) {
    const rawPeopleList: any = await RecordService.findRecordsByUnitId(id);
    const peopleList: PersonInfoInter[] = rawPeopleList.map(
      (raw: any) => raw.dataValues
    );
    if (peopleList) {
      const uniqueRecords = this.removeDuplicateRecords(peopleList);
      return new SuccessModel(uniqueRecords);
    } else {
      return new ErrorModel("not found");
    }
  }
  // 不对record进行去重，每个人只保留最所有记录
  async getRecordByUnitIdNofix(id: number) {
    const rawPeopleList: any = await RecordService.findRecordsByUnitId(id);
    const peopleList: PersonInfoInter[] = rawPeopleList.map(
      (raw: any) => raw.dataValues
    );
    if (peopleList) {
      return new SuccessModel(peopleList);
    } else {
      return new ErrorModel("not found");
    }
  }

  // 对menuList进行调整，如果每个person中的record具有多个相同problem的记录，则每个problem只保留一条记录
  private removeDuplicateRecords(people: PersonInfoInter[]) {
    for (const person of people) {
      const uniqueRecords: PersonInfoInter[] = [];
      const uniqueProblems: Set<string> = new Set();
      // records数组已经是时间降序
      person.records?.forEach((record: RecordInter) => {
        if (!uniqueProblems.has((record as any).problem_id)) {
          uniqueRecords.push(record);
          uniqueProblems.add((record as any).problem_id);
        }
      });
      person.records = uniqueRecords;
    }
    return people;
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
  async editRecord(data: RecordInter) {
    try {
      const result = await RecordService.updateRecord(data);
      if (result) {
        return new SuccessModel(result);
      }
    } catch (error) {
      return new ErrorModel("修改记录失败");
    }
  }
  async deleteRecord(id: number) {
    try {
      const result = await RecordService.destroyRecord(id);
      if (result) {
        return new SuccessModel(result);
      }
    } catch (error) {
      return new ErrorModel("删除记录失败");
    }
  }
}

export default RecordController.RecordController;
