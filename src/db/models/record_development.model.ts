import {
  Table,
  Column,
  Model,
  BelongsTo,
  ForeignKey,
} from "sequelize-typescript";
import Record from "./record.model";

@Table({
  timestamps: true,
})
export default class RecordDevelopment extends Model {
  @Column({
    defaultValue: "无",
  })
  detail!: string;

  @Column
  risk_level!: number;

  @BelongsTo(() => Record)
  record!: Record;

  @ForeignKey(() => Record)
  @Column
  record_id!: number;

  @Column({
    defaultValue: "无",
  })
  measure!: string;

  @Column({
    defaultValue: "无",
  })
  comment!: string;
}
