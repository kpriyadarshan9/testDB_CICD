create or replace function test_cicd(p_deptno IN Emp.Deptno%TYPE) return number
as
  v_sal number;
begin
  select sum(e.sal) into v_sal
  from Emp e
  where e.deptno = p_deptno;
  
  return v_sal;
end test_cicd;
/
