import {
  Table,
  Column,
  Model,
  ForeignKey,
  BelongsTo,
} from "sequelize-typescript";
import Unit from "./unit.model";

@Table({
  timestamps: false,
})
export default class User extends Model {
  @Column({
    allowNull: false,
  })
  username!: string;

  @Column({
    allowNull: false,
  })
  password!: string;

  @ForeignKey(() => Unit)
  @Column
  unit_id!: number;

  @BelongsTo(() => Unit)
  unit!: Unit;

  @Column({
    defaultValue: "user",
  })
  role!: string;
}
