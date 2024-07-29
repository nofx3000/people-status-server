import {
  Table,
  Column,
  Model,
  BelongsTo,
  ForeignKey,
} from "sequelize-typescript";
import People from "./people.model";
import Problem from "./problem.model";

@Table({
  timestamps: true,
})
export default class Record extends Model {
  @Column({
    defaultValue: "无",
  })
  detail!: string;

  @Column
  risk_level!: number;

  @BelongsTo(() => People, { foreignKey: "person_id", as: "person" })
  person!: People;

  @ForeignKey(() => People)
  @Column
  person_id!: number;

  @BelongsTo(() => Problem)
  problem!: Problem;

  @ForeignKey(() => Problem)
  @Column
  problem_id!: number;

  @Column({
    defaultValue: "无",
  })
  measure!: string;

  @ForeignKey(() => People)
  @Column
  responsible_id!: number;

  @BelongsTo(() => People, { foreignKey: "responsible_id", as: "responsible" })
  responsible!: People;

  @Column({
    defaultValue: "无",
  })
  comment!: string;
}
