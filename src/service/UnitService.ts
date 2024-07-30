import seq from "../db/seq";
class UnitService {
  static UnitService: UnitService = new UnitService();
  private Unit = seq.models.Unit;
  async findAllUnits() {
    return this.Unit.findAll();
  }
  async findPeopleByUnit(unitId: number) {
    return this.Unit.findAll({
      where: {
        id: unitId,
      },
      include: [
        {
          model: seq.models.People,
        },
      ],
    });
  }
  async findAllByUnit() {
    return this.Unit.findAll({
      include: [
        {
          model: seq.models.People,
          include: [
            {
              model: seq.models.Record,
              include: [
                {
                  model: seq.models.Phase,
                },
              ],
            },
          ],
        },
      ],
    });
  }
}

export default UnitService.UnitService;
