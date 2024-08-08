import {
  Table,
  Column,
  Model,
  BelongsTo,
  ForeignKey,
  HasMany,
} from "sequelize-typescript";
import Unit from "./unit.model";
import Record from "./record.model";
import People from "./people.model";

@Table({
  timestamps: false,
})
export default class Responsible extends Model {
  @Column({
    allowNull: false,
  })
  name!: string;

  @Column
  description!: string;

  @Column
  avatar!: string;

  @ForeignKey(() => Unit)
  @Column
  unit_id!: number;

  @BelongsTo(() => Unit)
  unit!: Unit;

  @HasMany(() => People)
  people!: People[];
}
