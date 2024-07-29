import seq from "../db/seq";
class RecordService {
  static RecordService: RecordService = new RecordService();
  private Record = seq.models.Record;
  private Problem = seq.models.Problem;
  private People = seq.models.People;
  private Unit = seq.models.Unit;
  async findRecordsByPersonId(id: number) {
    return this.Record.findAll({
      where: {
        person_id: id,
      },
      include: [
        { model: this.Problem },
        // { model: this.People, as: "person" },
        { model: this.People, as: "responsible" },
      ],
      order: [["updatedAt", "DESC"]],
    });
  }
  async findRecordsByUnitId(id: number) {
    return this.People.findAll({
      where: {
        unit_id: id,
      },
      include: [
        { model: this.Unit },
        {
          model: this.Record,
          as: "records",
          include: [
            {
              model: this.Problem,
              as: "problem",
            },
            {
              model: this.People,
              as: "responsible",
            },
          ],
        },
      ],
      order: [
        ["records", "problem", "id", "ASC"],
        ["records", "updatedAt", "DESC"],
      ],
    });
  }
  async createRecord(data: RecordInter) {
    return this.Record.create({
      // 提取data中的所有属性
      ...data,
      // person_id: data.person_id,
      // discount: data.discount,
      // duration: data.duration,
    });
  }
  async updateRecord(data: RecordInter) {
    return this.Record.update(
      {
        ...data,
      },
      {
        where: {
          id: data.id,
        },
      }
    );
  }
  async findOneRecordById(id: number) {
    return this.Record.findOne({
      where: {
        id,
      },
      include: [this.Problem, this.People],
    });
  }
  async destroyRecord(id: number) {
    return this.Record.destroy({
      where: {
        id,
      },
    });
  }
}

export default RecordService.RecordService;
