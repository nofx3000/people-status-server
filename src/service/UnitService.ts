import seq from "../db/seq";
class UnitService {
  static UnitService: UnitService = new UnitService();
  private Unit = seq.models.Unit;
  async findPeopleByUnit() {
    console.log("----------------", seq.models);
    for (const model in seq.models) {
      console.log(seq.models[model]);
    }
    return this.Unit.findAll({
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
