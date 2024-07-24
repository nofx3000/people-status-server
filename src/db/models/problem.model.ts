import { Table, Column, Model } from "sequelize-typescript";

@Table({
  timestamps: false,
})
export default class Problem extends Model {
  @Column({
    allowNull: false,
  })
  name!: string;
}
