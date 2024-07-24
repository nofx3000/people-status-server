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

@Table({
  timestamps: false,
})
export default class People extends Model {
  @Column({
    allowNull: false,
  })
  name!: string;

  @Column
  catagory!: number;

  @Column({
    defaultValue: true,
  })
  married!: boolean;

  @ForeignKey(() => Unit)
  @Column
  unit_id!: number;

  @BelongsTo(() => Unit)
  unit!: Unit;

  @HasMany(() => Record)
  record!: Record[];
}
