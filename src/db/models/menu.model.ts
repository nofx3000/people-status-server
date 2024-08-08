import { Table, Column, Model, HasMany, BelongsTo } from "sequelize-typescript";

@Table({
  timestamps: false,
})
export default class Menu extends Model {
  @Column({
    allowNull: false,
  })
  label!: string;

  @Column
  path!: string;

  @Column({
    defaultValue: "<AppstoreOutlined />",
  })
  icon!: string;

  @Column({
    defaultValue: "Menu",
  })
  type!: string;

  @Column
  parent_id!: number;

  // @BelongsTo(() => Menu, { foreignKey: "parent_id" })
  // parent!: Menu;

  @HasMany(() => Menu, { as: "children", foreignKey: "parent_id" })
  children?: Menu[];
}
