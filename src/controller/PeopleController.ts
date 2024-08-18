import PeopleService from "../service/PeopleService";
import UnitService from "../service/UnitService";
import { SuccessModel, ErrorModel, BaseModel } from "../resmodel/ResModel";

class PeopleController {
  static PeopleController: PeopleController = new PeopleController();
  async getPeopleInfoByUnit(unitId: string): Promise<BaseModel> {
    try {
      // if (unitId == "0") {
      //   const peopleInfoByUnit = await PeopleService.find
      // } else {
      //   const peopleInfoByUnit = await UnitService.findPeopleByUnit(unitId);
      //   return new SuccessModel(peopleInfoByUnit[0].dataValues.people);
      // }
      const peopleRecords = await PeopleService.findPeopleByUnitId(unitId);
      console.log(
        "peopleInfoByUnit",
        peopleRecords.map((item) => item.dataValues)
      );
      const separatedPeopleRecords = this.separatePeopleRecords(peopleRecords);
      return new SuccessModel(separatedPeopleRecords);
    } catch (error) {
      return new ErrorModel((error as any).toString());
    }
  }

  private separatePeopleRecords(peopleRecords: any[]) {
    const res: SeparatePeopleRecordsInter = {
      peopleWithUnsolvedRecords: [],
      peopleSolved: [],
    };
    const peopleList = peopleRecords.map(
      (item: any) => item.dataValues
    ) as PersonInfoInter[];
    for (const person of peopleList) {
      if (person.records?.every((record) => record.is_closed === true)) {
        res.peopleSolved.push(person);
      } else {
        res.peopleWithUnsolvedRecords.push(person);
      }
    }
    return res;
  }

  async addOnePerson(personInfo: any): Promise<BaseModel> {
    try {
      const res = await PeopleService.createOnePerson(personInfo);
      return new SuccessModel(res);
    } catch (error) {
      return new ErrorModel((error as any).toString());
    }
  }
  async delOnePerson(id: number): Promise<BaseModel> {
    try {
      const res = await PeopleService.destroyOnePerson(id);
      return new SuccessModel(0, res);
    } catch (error) {
      return new ErrorModel((error as any).toString());
    }
  }
  async editOnePerson(id: number, personInfo: any): Promise<BaseModel> {
    try {
      const res = await PeopleService.updateOnePerson(id, personInfo);
      return new SuccessModel(res);
    } catch (error) {
      return new ErrorModel((error as any).toString());
    }
  }
  async getPersonInfo(id: number): Promise<BaseModel> {
    try {
      const res = await PeopleService.findPersonById(id);
      return new SuccessModel(res);
    } catch (error) {
      return new ErrorModel((error as any).toString());
    }
  }
}

export default PeopleController.PeopleController;
