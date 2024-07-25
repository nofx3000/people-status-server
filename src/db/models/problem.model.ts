import { Table, Column, Model, BelongsTo } from "sequelize-typescript";
import Record from "./record.model";

@Table({
  timestamps: false,
})
export default class Problem extends Model {
  @Column({
    allowNull: false,
  })
  name!: string;
}
