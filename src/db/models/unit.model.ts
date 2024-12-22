import { Table, Column, Model, HasMany } from "sequelize-typescript";
import People from "./people.model";
import User from "./user.model";

@Table({
  timestamps: false,
  // tableName: 'units'
})
export default class Unit extends Model {
  @Column({
    allowNull: false,
  })
  name!: string;

  @Column({
    allowNull: false,
    defaultValue: false,
  })
  isCommand!: boolean;

  @HasMany(() => People)
  people!: People[];

  @HasMany(() => User)
  user!: User;
}
