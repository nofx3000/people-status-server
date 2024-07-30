interface RecordInter {
  id?: number;
  detail?: string;
  risk_level?: number;
  person_id?: number;
  problem_id?: number;
  measure?: string;
  comment?: string;
}

interface PersonInfoInter {
  id?: number;
  name?: string;
  catagory?: number;
  unit_id?: number;
  married?: boolean;
  comment?: string;
  records?: RecordInter[];
}

interface ProblemInter {
  id?: number;
  name?: string;
  record?: RecordInter[];
}

interface UserInfoInter {
  username: string;
  password: string;
  role?: "admin" | "user";
}

interface LoginInter {
  username: string;
  password: string;
}

interface UnitInter {
  name: string;
}
