import {
  Table,
  Column,
  Model,
  BelongsTo,
  ForeignKey,
  HasMany,
} from "sequelize-typescript";
import People from "./people.model";
import Problem from "./problem.model";
import RecordDevelopment from "./record_development.model";

@Table({
  timestamps: true,
})
export default class Record extends Model {
  @BelongsTo(() => People)
  person!: People;

  @ForeignKey(() => People)
  @Column
  person_id!: number;

  @BelongsTo(() => Problem)
  problem!: Problem;

  @ForeignKey(() => Problem)
  @Column
  problem_id!: number;

  @HasMany(() => RecordDevelopment)
  record_Developments!: RecordDevelopment[];

  @Column({
    defaultValue: false,
  })
  is_closed!: boolean;
}
