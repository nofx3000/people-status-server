import seq from "../db/seq";
class PeopleService {
  static PeopleService: PeopleService = new PeopleService();
  private Record = seq.models.Record;
  private RecordDevelopment = seq.models.RecordDevelopment;
  private People = seq.models.People;
  private Unit = seq.models.Unit;
  private Problem = seq.models.Problem;
  private Responsible = seq.models.Responsible;
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
  async updateOnePerson(id: number, personInfo: any) {
    const res = await this.People.update(personInfo as any, {
      where: {
        id: id,
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
        { model: this.Responsible },
        {
          model: this.Record,

          include: [
            { model: this.Problem },
            {
              model: this.RecordDevelopment,
            },
          ],
        },
      ],
      order: [
        ["records", "is_closed", "ASC"],
        ["records", "updatedAt", "DESC"],
        ["records", "record_Developments", "updatedAt", "DESC"],
      ],
    });
  }

  async findPeopleByUnitId(unitId: string) {
    let whereQuery = undefined;
    if (unitId != "0") {
      whereQuery = { id: unitId };
    }

    const query = {
      include: [
        { model: this.Unit, where: whereQuery },
        {
          model: this.Record,
          // where: {
          //   is_closed: false,
          // },
          include: [{ model: this.Problem }, { model: this.RecordDevelopment }],
        },
        { model: this.Responsible },
      ],
    };
    return await this.People.findAll(query);
  }
}

export default PeopleService.PeopleService;
