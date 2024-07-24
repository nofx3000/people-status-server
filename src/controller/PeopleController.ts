import PeopleService from "../service/PeopleService";
import UnitService from "../service/UnitService";
import { SuccessModel, ErrorModel, BaseModel } from "../resmodel/ResModel";

class PeopleController {
  static PeopleController: PeopleController = new PeopleController();
  async getAllPeopleInfoByUnit(): Promise<BaseModel> {
    try {
      const peopleInfoByUnit = await UnitService.findPeopleByUnit();
      return new SuccessModel(peopleInfoByUnit);
    } catch (error) {
      console.error("-----", error);
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
  async editOnePerson(personInfo: any): Promise<BaseModel> {
    try {
      const res = await PeopleService.updateOnePerson(personInfo);
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
