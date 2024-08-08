interface RecordInter {
  id?: number;
  person_id?: number;
  person?: PersonInfoInter;
  problem_id?: number;
  problem?: ProblemInter;
  record_Developments?: RecordDevelopment[];
  is_closed?: boolean;
  createdAt?: Date;
  updatedAt?: Date;
}

interface RecordDevelopmentInter {
  id?: number;
  risk_level?: number;
  record?: RecordInter;
  record_id?: number;
  measure?: string;
  comment?: string;
  createdAt?: Date;
  updatedAt?: Date;
}

interface PersonInfoInter {
  id?: number;
  name?: string;
  avatar?: string;
  catagory?: number;
  unit_id?: number;
  unit?: UnitInter;
  married?: boolean;
  comment?: string;
  records?: RecordInter[];
  responsible_id?: number;
  responsible?: ResponsibleInter;
}

interface ResponsibleInter {
  id?: number;
  name?: string;
  description?: string;
  avatar?: string;
  unit_id?: number;
  unit?: Unit;
  people?: PersonInfoInter[];
}

interface ProblemInter {
  id?: number;
  name?: string;
  record?: RecordInter[];
}

interface UserInfoInter {
  id?: number;
  username: string;
  password: string;
  role?: "admin" | "user";
}

interface LoginInter {
  username: string;
  password: string;
}

interface UnitInter {
  id?: number;
  name: string;
}

interface MenuItemInter {
  id?: number;
  label?: string;
  path?: string;
  icon?: string;
  type?: string;
  parent_id?: string;
  children?: MenuItemInter[];
}
