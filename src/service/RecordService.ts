import seq from "../db/seq";
import { Op } from "sequelize";

class RecordService {
  static RecordService: RecordService = new RecordService();
  private Record = seq.models.Record;
  private Problem = seq.models.Problem;
  private People = seq.models.People;
  private RecordDevelopment = seq.models.RecordDevelopment;
  async findRecordsByPersonId(id: number) {
    return await this.Record.findAll({
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
  async findUnsolvedRecordsByUnitId(id: number) {
    let whereQuery = undefined;
    if (id != 0) {
      whereQuery = {
        unit_id: id,
      };
    }
    let query = {
      include: [
        {
          model: this.People,
          where: whereQuery,
        },
      ],
      where: {
        is_closed: false,
      },
    };

    return await this.Record.findAll(query);
  }
  async findSolvedRecordsByUnitId(id: number) {
    let whereQuery = undefined;
    if (id != 0) {
      whereQuery = {
        unit_id: id,
      };
    }
    let query = {
      include: [
        {
          model: this.People,
          where: whereQuery,
        },
      ],
      where: {
        is_closed: true,
      },
    };

    return await this.Record.findAll(query);
  }
  async createRecord(data: RecordInter) {
    return await this.Record.create({
      // 提取data中的所有属性
      ...data,
      // person_id: data.person_id,
      // discount: data.discount,
      // duration: data.duration,
    });
  }
  async updateRecord(data: RecordInter) {
    return await this.Record.update(
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
    return await this.Record.findOne({
      where: {
        id,
      },
      include: [this.Problem, this.People],
    });
  }
  async destroyRecord(id: number) {
    return await this.Record.destroy({
      where: {
        id,
      },
    });
  }
  async updateRecordUpdateDate(record_id: number) {
    return await this.Record.update(
      {
        updated_bar: new Date(),
      },
      {
        where: {
          id: record_id,
        },
      }
    );
  }
  async findRecordsUpdatedAfter(lastLogin: Date) {
    return await this.Record.findAll({
      where: {
        updatedAt: {
          [Op.gt]: lastLogin,
        },
      },
      include: [
        { model: this.Problem },
        { model: this.People },
        { model: this.RecordDevelopment },
      ],
      order: [["updatedAt", "DESC"]],
    });
  }
}

export default RecordService.RecordService;
