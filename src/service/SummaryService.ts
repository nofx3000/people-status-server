import seq from "../db/seq";
class SummaryService {
  static SummaryService: SummaryService = new SummaryService();
  private Problem = seq.models.Problem;
  private People = seq.models.People;
  private Record = seq.models.Record;
  async findNumberOfPeopleOfEachProblem(unitId: number) {
    return this.Problem.findAll({
      include: [
        {
          model: this.Record,
          as: "record",
          include: [
            {
              model: this.People,
              as: "person",
              where: {
                unit_id: unitId,
              },
            },
          ],
        },
      ],
      order: [
        ["record", "person", "id", "ASC"],
        ["record", "createdAt", "DESC"],
      ],
    });
  }
}

export default SummaryService.SummaryService;
