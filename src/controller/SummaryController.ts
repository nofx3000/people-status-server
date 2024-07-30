import SummaryService from "../service/SummaryService";
import { SuccessModel, ErrorModel } from "../resmodel/ResModel";
class SummaryController {
  static SummaryController: SummaryController = new SummaryController();
  async getRadar(unitId: number) {
    try {
      const rawProblemList: any =
        await SummaryService.findNumberOfPeopleOfEachProblem(unitId);
      const problemList: ProblemInter[] = rawProblemList.map(
        (raw: any) => raw.dataValues
      );
      if (problemList) {
        const uniqueProblems = this.removeDuplicatePerson(problemList);
        return new SuccessModel(uniqueProblems);
      } else {
        return new ErrorModel("not found");
      }
    } catch (err) {
      return new ErrorModel((err as Error).toString());
    }
  }

  private removeDuplicatePerson(problems: ProblemInter[]) {
    for (const problem of problems) {
      const uniqueRecords: RecordInter[] = [];
      const uniquePerson: Set<string> = new Set();
      // records数组已经是时间降序
      problem.record?.forEach((record: RecordInter) => {
        if (!uniquePerson.has((record as any).person_id)) {
          uniqueRecords.push(record);
          uniquePerson.add((record as any).person_id);
        }
      });
      problem.record = uniqueRecords;
    }
    return problems;
  }
}

export default SummaryController.SummaryController;
