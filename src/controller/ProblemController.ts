import ProblemService from "../service/ProblemService";
import { SuccessModel, ErrorModel } from "../resmodel/ResModel";
class ProblemController {
  static ProblemController: ProblemController = new ProblemController();

  async getAllProblems() {
    const problems = await ProblemService.findAllProblems();
    if (problems) {
      return new SuccessModel(problems);
    } else {
      return new ErrorModel("failed to get problems");
    }
  }

  async getProblemById(id: number) {
    const problem = await ProblemService.findOneProblemById(id);
    if (problem) {
      return new SuccessModel(problem);
    } else {
      return new ErrorModel("not found problem");
    }
  }

  async addProblem(data: ProblemInter) {
    // 使用ProblemService中的createProblem方法，添加problem记录，获取problem_id
    const problem_id = await ProblemService.createProblem(data);
    if (problem_id) {
      return new SuccessModel(problem_id);
    }
    try {
    } catch (error) {
      return new ErrorModel("添加problem失败");
    }
  }

  async editProblem(data: ProblemInter) {
    try {
      const result = await ProblemService.updateProblem(data);
      if (result) {
        return new SuccessModel(result);
      }
    } catch (error) {
      return new ErrorModel("修改problem失败");
    }
  }

  async deleteProblem(id: number) {
    try {
      const result = await ProblemService.destroyProblem(id);
      if (result) {
        return new SuccessModel(result);
      }
    } catch (error) {
      return new ErrorModel("删除problem失败");
    }
  }
}

export default ProblemController.ProblemController;
