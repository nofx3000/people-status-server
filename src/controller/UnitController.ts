import UnitService from "../service/UnitService";
import { SuccessModel, ErrorModel } from "../resmodel/ResModel";

class UnitController {
  static UnitController: UnitController = new UnitController();

  async getAllUnits() {
    const units = await UnitService.findAllUnits();
    if (units) {
      return new SuccessModel(units);
    } else {
      return new ErrorModel("failed to get units");
    }
  }

  // async getUnitById(id: number) {
  //     const unit = await UnitService.findOneUnitById(id);
  //     if (unit) {
  //         return new SuccessModel(unit);
  //     } else {
  //         return new ErrorModel("not found unit");
  //     }
  // }

  // async addUnit(data: UnitInter) {
  //     const unit_id = await UnitService.createUnit(data);
  //     if (unit_id) {
  //         return new SuccessModel(unit_id);
  //     }
  //     try {
  //     } catch (error) {
  //         return new ErrorModel("failed to add unit");
  //     }
  // }

  // async editUnit(data: UnitInter) {
  //     try {
  //         const result = await UnitService.updateUnit(data);
  //         if (result) {
  //             return new SuccessModel(result);
  //         }
  //     } catch (error) {
  //         return new ErrorModel("failed to edit unit");
  //     }
  // }

  // async deleteUnit(id: number) {
  //     try {
  //         const result = await UnitService.destroyUnit(id);
  //         if (result) {
  //             return new SuccessModel(result);
  //         }
  //     } catch (error) {
  //         return new ErrorModel("failed to delete unit");
  //     }
  // }
}

export default UnitController.UnitController;
