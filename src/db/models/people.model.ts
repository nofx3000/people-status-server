import {
  Table,
  Column,
  Model,
  BelongsTo,
  ForeignKey,
  HasMany,
  DataType,
} from "sequelize-typescript";
import Unit from "./unit.model";
import Record from "./record.model";
import Responsible from "./responsible.model";

@Table({
  timestamps: true,
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

  @Column
  avatar!: string;

  @ForeignKey(() => Unit)
  @Column
  unit_id!: number;

  @BelongsTo(() => Unit)
  unit!: Unit;

  @HasMany(() => Record)
  records!: Record[];

  @ForeignKey(() => Responsible)
  @Column
  responsible_id!: number;

  @BelongsTo(() => Responsible)
  responsible!: Responsible;

  @Column({
    type: DataType.DATE,
    allowNull: false,
    defaultValue: DataType.NOW,
  })
  createdAt!: Date;

  @Column({
    type: DataType.DATE,
    allowNull: false,
    defaultValue: DataType.NOW,
  })
  updatedAt!: Date;
}
