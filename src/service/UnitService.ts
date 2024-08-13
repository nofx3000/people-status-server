import seq from "../db/seq";
class UnitService {
  static UnitService: UnitService = new UnitService();
  private Unit = seq.models.Unit;
  async findAllUnits() {
    return this.Unit.findAll({
      where: {
        isCommand: false,
      },
      include: [
        {
          model: seq.models.People,
          include: [
            {
              model: seq.models.Unit,
            },
            {
              model: seq.models.Responsible,
            },
            {
              model: seq.models.Record,
              include: [
                {
                  model: seq.models.Problem,
                },
                {
                  model: seq.models.RecordDevelopment,
                },
              ],
            },
          ],
        },
      ],
    });
  }
  async findPeopleByUnit(unitId: string) {
    const whereQuery = {
      where: {
        id: unitId,
      },
    };

    const includeQuery = {
      include: [
        {
          model: seq.models.People,
          include: [
            {
              model: seq.models.Unit,
            },
            {
              model: seq.models.Responsible,
            },
            {
              model: seq.models.Record,
              include: [
                {
                  model: seq.models.Problem,
                },
                {
                  model: seq.models.RecordDevelopment,
                },
              ],
            },
          ],
        },
      ],
    };
    // let query = {};
    // if (unitId == "0") {
    //   query = includeQuery;
    // } else {
    //   query = {
    //     ...whereQuery,
    //     ...includeQuery,
    //   };
    // }
    return await this.Unit.findAll({ ...whereQuery, ...includeQuery });
  }
}

export default UnitService.UnitService;
