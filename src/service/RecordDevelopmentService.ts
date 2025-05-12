import seq from "../db/seq";

class RecordDevelopmentService {
  static RecordDevelopmentService: RecordDevelopmentService =
  new RecordDevelopmentService();
  private People = seq.models.People;
  private Record = seq.models.Record;
  private RecordDevelopment = seq.models.RecordDevelopment;

  async createRecordDevelopment(data: RecordDevelopmentInter) {
    const res = await this.RecordDevelopment.create(data as any);
    return res;
  }

  async getTopSixRecordDevelopments() {
    const res = await this.RecordDevelopment.findAll({
      order: [["updatedAt", "DESC"]],
      limit: 6,
      include: [
        {
          model: this.Record,
          include: [
            {
              model: this.People,
            },
          ],
        },
      ],
    });
    return res;
  }

  async destroyRecordDevelopment(id: number) {
    return await this.RecordDevelopment.destroy({
      where: {
        id,
      },
    });
  }

  async updateRecordDevelopment(id: number, data: RecordDevelopmentInter) {
    const res = await this.RecordDevelopment.update(data, {
      where: {
        id: data.id,
      },
    });
    return res;
  }
}

export default RecordDevelopmentService.RecordDevelopmentService;
