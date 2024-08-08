import seq from "../db/seq";
import { Op } from "sequelize";
class MenuService {
  static MenuService: MenuService = new MenuService();
  private Menu = seq.models.Menu;
  async findMenus() {
    return this.Menu.findAll({
      where: {
        type: {
          [Op.ne]: "Submenu",
        },
      },
      include: [
        {
          model: this.Menu,
          as: "children",
        },
      ],
    });
  }
}

export default MenuService.MenuService;
