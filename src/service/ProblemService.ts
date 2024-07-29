// 以下是ProblemService
import seq from "../db/seq";
class ProblemService {
  static ProblemService: ProblemService = new ProblemService();
  private Problem = seq.models.Problem;
  async createProblem(data: ProblemInter) {
    const res = await this.Problem.create(data as any);
    return res;
  }
  async destroyProblem(id: number) {
    return await this.Problem.destroy({
      where: {
        id,
      },
    });
  }
  async updateProblem(data: ProblemInter) {
    const res = await this.Problem.update(data, {
      where: {
        id: data.id,
      },
    });
    return res;
  }
  async findOneProblemById(id: number) {
    return await this.Problem.findOne({
      where: {
        id,
      },
    });
  }
  async findAllProblems() {
    return await this.Problem.findAll();
  }
}
export default ProblemService.ProblemService;
