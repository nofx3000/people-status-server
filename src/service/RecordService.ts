import seq from "../db/seq";
class RecordService {
  static RecordService: RecordService = new RecordService();
  private Record = seq.models.Record;
  private Phase = seq.models.Phase;
  async findRecordsByPersonId(id: number) {
    return this.Record.findAll({
      where: {
        person_id: id,
      },
      // include: {
      //   model: this.Phase,
      //   as: "phase",
      // },
      // order: [["phase", "start_at", "ASC"]],
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
  async updateRecord(data: any) {
    return this.Record.update(
      {
        person_id: data.person_id,
        discount: data.discount,
        duration: data.duration,
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
      include: {
        model: this.Phase,
      },
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
