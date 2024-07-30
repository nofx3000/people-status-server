import { Table, Column, Model, HasMany } from "sequelize-typescript";
import Record from "./record.model";

@Table({
  timestamps: false,
})
export default class Problem extends Model {
  @Column({
    allowNull: false,
  })
  name!: string;

  @HasMany(() => Record)
  record!: Record[];
}
