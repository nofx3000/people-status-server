import RecordDevelopmentService from "../service/RecordDevelopmentService";
import { SuccessModel, ErrorModel } from "../resmodel/ResModel";

class RecordDevelopmentController {
  static RecordDevelopmentController: RecordDevelopmentController =
    new RecordDevelopmentController();

  async addRecordDevelopment(data: RecordDevelopmentInter) {
    try {
      const record_id = await RecordDevelopmentService.createRecordDevelopment(
        data
      );
      if (record_id) {
        return new SuccessModel(record_id);
      }
    } catch (error) {
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

// import ProblemService from "../service/ProblemService";
// import { SuccessModel, ErrorModel } from "../resmodel/ResModel";
// class ProblemController {
//   static ProblemController: ProblemController = new ProblemController();

//   async getAllProblems() {
//     const problems = await ProblemService.findAllProblems();
//     if (problems) {
//       return new SuccessModel(problems);
//     } else {
//       return new ErrorModel("failed to get problems");
//     }
//   }

//   async getProblemById(id: number) {
//     const problem = await ProblemService.findOneProblemById(id);
//     if (problem) {
//       return new SuccessModel(problem);
//     } else {
//       return new ErrorModel("not found problem");
//     }
//   }

//   async addProblem(data: ProblemInter) {
//     // 使用ProblemService中的createProblem方法，添加problem记录，获取problem_id
//     const problem_id = await ProblemService.createProblem(data);
//     if (problem_id) {
//       return new SuccessModel(problem_id);
//     }
//     try {
//     } catch (error) {
//       return new ErrorModel("添加problem失败");
//     }
//   }

//   async editProblem(data: ProblemInter) {
//     try {
//       const result = await ProblemService.updateProblem(data);
//       if (result) {
//         return new SuccessModel(result);
//       }
//     } catch (error) {
//       return new ErrorModel("修改problem失败");
//     }
//   }

//   async deleteProblem(id: number) {
//     try {
//       const result = await ProblemService.destroyProblem(id);
//       if (result) {
//         return new SuccessModel(result);
//       }
//     } catch (error) {
//       return new ErrorModel("删除problem失败");
//     }
//   }
// }

// export default ProblemController.ProblemController;
