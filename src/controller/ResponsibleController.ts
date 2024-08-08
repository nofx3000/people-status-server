import ResponsibleService from "../service/ResponsibleService";
import { SuccessModel, ErrorModel, BaseModel } from "../resmodel/ResModel";

class ResponsibleController {
  static ResponsibleController: ResponsibleController =
    new ResponsibleController();

  async getAllResponsibles(): Promise<BaseModel> {
    try {
      const res = await ResponsibleService.findAllResponsibleInfo();
      return new SuccessModel(res);
    } catch (error) {
      return new ErrorModel((error as any).toString());
    }
  }

  async getResponsibleById(id: number): Promise<BaseModel> {
    try {
      const res = await ResponsibleService.findResponsibleById(id);
      return new SuccessModel(res);
    } catch (error) {
      return new ErrorModel((error as any).toString());
    }
  }

  async getResponsibleByUnitId(unitid: number): Promise<BaseModel> {
    try {
      const res = await ResponsibleService.findResponsibleByUnitId(unitid);
      return new SuccessModel(res);
    } catch (error) {
      return new ErrorModel((error as any).toString());
    }
  }

  async addResponsible(responsibleInfo: any): Promise<BaseModel> {
    try {
      const res = await ResponsibleService.createOneResponsible(
        responsibleInfo
      );
      return new SuccessModel(res);
    } catch (error) {
      return new ErrorModel((error as any).toString());
    }
  }

  async deleteResponsible(id: number): Promise<BaseModel> {
    try {
      const res = await ResponsibleService.destroyOneResponsible(id);
      return new SuccessModel(0, res);
    } catch (error) {
      return new ErrorModel((error as any).toString());
    }
  }

  async editResponsible(id: number, responsibleInfo: any): Promise<BaseModel> {
    try {
      const res = await ResponsibleService.updateOneResponsible(
        id,
        responsibleInfo
      );
      return new SuccessModel(res);
    } catch (error) {
      return new ErrorModel((error as any).toString());
    }
  }
}

export default ResponsibleController.ResponsibleController;
