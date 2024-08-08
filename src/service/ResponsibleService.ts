import seq from "../db/seq";

class ResponsibleService {
  static ResponsibleService: ResponsibleService = new ResponsibleService();
  private Responsible = seq.models.Responsible;
  private People = seq.models.People;
  private Unit = seq.models.Unit;

  async findAllResponsibleInfo() {
    return await this.Responsible.findAll({
      include: [
        { model: this.Unit },
        {
          model: this.People,
        },
      ],
    });
  }

  async findResponsibleById(id: number) {
    return await this.Responsible.findOne({
      where: {
        id,
      },
      include: [
        { model: this.Unit },
        {
          model: this.People,
        },
      ],
    });
  }

  async findResponsibleByUnitId(unitid: number) {
    return await this.Responsible.findAll({
      where: {
        unit_id: unitid,
      },
      include: [
        { model: this.Unit },
        {
          model: this.People,
        },
      ],
    });
  }

  async createOneResponsible(responsibleInfo: any) {
    const res = await this.Responsible.create(responsibleInfo as any);
    return res;
  }

  async destroyOneResponsible(id: number) {
    return await this.Responsible.destroy({
      where: {
        id,
      },
    });
  }

  async updateOneResponsible(id: number, responsibleInfo: any) {
    const res = await this.Responsible.update(responsibleInfo as any, {
      where: {
        id: id,
      },
    });
    return res;
  }
}

export default ResponsibleService.ResponsibleService;
