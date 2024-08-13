import seq from "../db/seq";

class UserService {
  static UserService: UserService = new UserService();
  private User = seq.models.User;

  async findUser(logininfo: any) {
    const { username, password } = logininfo;
    let res;
    try {
      res = await this.User.findOne({
        where: {
          username,
          password,
        },
        include: [
          {
            model: seq.models.Unit,
          },
        ],
      });
      return res;
    } catch (err) {}
  }
  async createUser(userinfo: any) {
    return await this.User.create(userinfo as any);
  }
}

export default UserService.UserService;
