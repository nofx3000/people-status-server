import sequelize from "sequelize";
import seq from "../db/seq";
const { Op } = sequelize;
class SummaryService {
  static SummaryService: SummaryService = new SummaryService();
  private Problem = seq.models.Problem;
  private People = seq.models.People;
  private Record = seq.models.Record;
  private RecordDevelopment = seq.models.RecordDevelopment;
  async findNumberOfPeopleOfEachProblem(unitId: number, month: number) {
    const includeQuery = {
      model: this.People,
      as: "person",
      // required: false,
    };

    const whereQuery = {
      unit_id: unitId,
    };

    let query = {};
    if (unitId == 0) {
      query = { ...includeQuery };
    } else {
      query = { ...includeQuery, where: whereQuery };
    }

    const res = await this.Problem.findAll({
      include: [
        {
          model: this.Record,
          as: "record",
          required: false, // Ensure output even if record is empty
          where: [
            sequelize.where(seq.fn("MONTH", seq.col("updatedAt")), "<=", month),
            {
              is_closed: false,
            },
          ],
          include: query as any,
        },
      ],
      order: [
        ["id", "ASC"],
        ["record", "person", "id", "ASC"],
        ["record", "createdAt", "DESC"],
      ],
    });
    return res;
  }

  // async findPersonLastestRecordDevelopmentMonthly(
  //   unitId: number,
  //   month: number
  // ) {
  //   const includeQuery = {
  //     include: [
  //       {
  //         model: this.Record,
  //         // where: {
  //         //   is_closed: false,
  //         // },
  //         order: [["updatedAt", "DESC"]],
  //         include: [
  //           {
  //             model: this.RecordDevelopment,
  //             limit: 1,
  //             order: [["updatedAt", "DESC"]],
  //             where: {
  //               [Op.and]: [
  //                 sequelize.where(
  //                   seq.fn("MONTH", seq.col("updatedAt")),
  //                   "<=",
  //                   month
  //                 ),
  //                 sequelize.where(
  //                   seq.fn("MONTH", seq.col("updatedAt")),
  //                   ">",
  //                   month - 1
  //                 ),
  //               ],
  //             },
  //           },
  //         ],
  //       },
  //     ],
  //   };
  //   const whereQuery = {
  //     where: {
  //       unit_id: unitId,
  //     },
  //   };
  //   let query = {};
  //   if (unitId === 0) {
  //     query = { ...includeQuery };
  //   } else {
  //     query = { ...includeQuery, ...whereQuery };
  //   }

  //   const res = await this.People.findAll(query);
  //   return res;
  // }

  async findLastestRecordDevelopmentMonthly(unitId: number, month: number) {
    let whereQuery = undefined;
    if (unitId != 0) {
      whereQuery = {
        unit_id: unitId,
      };
    }

    const query = {
      where: {
        // 排除month之前已完结的record
        // 例如，9月完结的record，查询8月的时候应该还作数
        [Op.not]: sequelize.and(
          { is_closed: true },
          sequelize.where(seq.fn("MONTH", seq.col("updatedAt")), "<=", month)
        ),
      },
      include: [
        {
          model: this.RecordDevelopment,
          limit: 1,
          order: [["updatedAt", "DESC"]],
          where: sequelize.where(
            seq.fn("MONTH", seq.col("updatedAt")),
            "<=",
            month
          ),
        },
        {
          model: this.People,
          where: whereQuery,
        },
      ],
    };
    // let query = {};
    // if (unitId == 0) {
    //   query = { ...includeQuery };
    // } else {
    //   query = { ...includeQuery, ...whereQuery };
    // }
    // console.log("===========", JSON.stringify(query));

    const res = await this.Record.findAll(query as any);
    return res;
  }
}

export default SummaryService.SummaryService;
