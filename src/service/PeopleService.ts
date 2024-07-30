import seq from "../db/seq";
class PeopleService {
  static PeopleService: PeopleService = new PeopleService();
  private Record = seq.models.Record;
  private Problem = seq.models.Problem;
  private People = seq.models.People;
  private Unit = seq.models.Unit;
  async createOnePerson(personInfo: any) {
    const res = await this.People.create(personInfo as any);
    return res;
  }
  async destroyOnePerson(id: number) {
    return await this.People.destroy({
      where: {
        id,
      },
    });
  }
  async updateOnePerson(personInfo: any) {
    const res = await this.People.update(personInfo as any, {
      where: {
        id: personInfo.id,
      },
    });
    return res;
  }
  async findPersonById(id: number) {
    return await this.People.findOne({
      where: {
        id,
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
  async findAllPeopleInfo() {
    return await this.People.findAll({
      include: [
        {
          model: seq.models.Record,
          include: [
            {
              model: seq.models.Phase,
            },
          ],
        },
        {
          model: seq.models.Division,
        },
      ],
    });
  }
}

export default PeopleService.PeopleService;
