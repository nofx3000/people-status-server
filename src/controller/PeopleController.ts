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
      const peopleInfoByUnit = await PeopleService.findPeopleByUnitId(unitId);
      return new SuccessModel(peopleInfoByUnit);
    } catch (error) {
      return new ErrorModel((error as any).toString());
    }
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
  async getPeopleInfoWithEverything(): Promise<BaseModel> {
    try {
      const res = await PeopleService.findAllPeopleInfo();
      return new SuccessModel(res);
    } catch (error) {
      return new ErrorModel((error as any).toString());
    }
  }
}

export default PeopleController.PeopleController;
