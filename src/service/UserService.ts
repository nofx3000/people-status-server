import seq from "../db/seq";

class UserService {
  static UserService: UserService = new UserService();
  private User = seq.models.User;
  async findUser(logininfo: any) {
    const { username, password } = logininfo;
    let res;
    try {
      res = await this.User.findOne({
        attributes: ["id", "username", "role"],
        where: {
          username,
          password,
        },
      });
      console.log("++++++++++++++++++++", res);
      return res;
    } catch (err) {
      console.log("++++++++++++++++++++", err);
    }
  }
  async createUser(userinfo: any) {
    return await this.User.create(userinfo as any);
  }
}

export default UserService.UserService;
