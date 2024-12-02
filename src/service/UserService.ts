import seq from "../db/seq";
import { Model } from "sequelize-typescript";

class UserService {
  static UserService: UserService = new UserService();
  private User = seq.models.User;

  async findUser(logininfo: any) {
    const { username, password } = logininfo;
    let res: Model<UserInfoInter> | null;
    try {
      res = (await this.User.findOne({
        where: {
          username,
          password,
        },
        include: [
          {
            model: seq.models.Unit,
          },
        ],
      })) as Model<UserInfoInter> | null;
      return res;
    } catch (err) {
      console.error("Find user error:", err);
      return null;
    }
  }
  async createUser(userinfo: any) {
    return await this.User.create(userinfo as any);
  }
  async updateLastLogin(userId: number) {
    return await this.User.update(
      {
        last_login: new Date(),
      },
      {
        where: {
          id: userId,
        },
      }
    );
  }
  async getLastLogin(userId: number) {
    return await this.User.findOne({
      where: {
        id: userId,
      },
      attributes: ["last_login"],
    });
  }
}

export default UserService.UserService;
