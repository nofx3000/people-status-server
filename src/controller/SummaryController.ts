import SummaryService from "../service/SummaryService";
import { SuccessModel, ErrorModel } from "../resmodel/ResModel";
import dateFormat from "dateformat";
class SummaryController {
  static SummaryController: SummaryController = new SummaryController();
  async getRadar(unitId: number) {
    try {
      const thisMonthproblemList =
        await SummaryService.findNumberOfPeopleOfEachProblem(
          unitId,
          new Date().getMonth() + 1
        );
      const lastMonthproblemList =
        await SummaryService.findNumberOfPeopleOfEachProblem(
          unitId,
          new Date().getMonth()
        );
      console.log("++++++++++++++thisMonthproblemList+++++++++++++++++++++", thisMonthproblemList);
      console.log("++++++++++++++lastMonthproblemList+++++++++++++++++++++", lastMonthproblemList);
      return new SuccessModel({
        thisMonth: thisMonthproblemList,
        lastMonth: lastMonthproblemList,
      });
    } catch (error) {
      return new ErrorModel((error as Error).toString());
    }
  }

  async getLine(unitId: number, month: number) {
    try {
      const res = await SummaryService.findLastestRecordDevelopmentMonthly(
        unitId,
        month
      );
      const _res = (res as RecordInter[]).filter((res) => {
        return res.record_Developments && res.record_Developments.length > 0;
      });
      return new SuccessModel(_res);
    } catch (error) {
      return new ErrorModel((error as Error).toString());
    }
  }
}

export default SummaryController.SummaryController;
