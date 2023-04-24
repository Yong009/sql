set serveroutput on

variable p_annual_sal number

execute :p_annual_sal := 5000;

declare
    v_sal number(9,2) := &p_annual_sal;
begin
    v_sal := v_sal/12;
    dbms_output.put_line('The monthly salary is ' ||TO_Char(v_sal,'$999.99'));
end;    
/

declare  
    v_job varchar2(9);
    v_count number(9,2) not null default 0;
    v_max constant number(10) := v_count + 100;
    v_copy v_count%TYPE := 102;
begin
    dbms_output.put_line(v_job);
    dbms_output.put_line(v_count);
    dbms_output.put_line(v_max);
    dbms_output.put_line(v_copy);
end;
/

create or replace procedure test_pro
is 

begin

    dbms_output.put_line('���� �Ϸ�');
    
end;
/

drop procedure test_pro;

DECLARE
    v_sal NUMBER(7,2) := 60000;
    v_comm NUMBER(7,2) := v_sal * .20;
    v_message VARCHAR2(255):=' eligible for commission';
BEGIN
    DECLARE
        v_sal NUMBER(7,2) := 50000;
        v_comm NUMBER(7,2) := 0;
        v_total_comp NUMBER(7,2) := v_sal+ v_comm;
    BEGIN
        dbms_output.put_line('v_total_comp :' || v_total_comp);
        v_message := 'CLERK not '||v_message;
        dbms_output.put_line('1) ' || v_message);
        v_comm := v_sal * .30; 
    END;
        -- dbms_output.put_line('v_total_comp :' || v_total_comp);
        v_message := 'SALESMAN'||' '||v_message;
       dbms_output.put_line('2) '||' '|| v_message);
END;
/


declare
    v_emp_all number(2); -- ��ü �����
    v_emp_dept_50 number(2); -- �μ��� 50�� �����
begin
    select count(employee_id) 
    into v_emp_all
    from employees;
    
    
    dbms_output.put_line('All Emp : ' || v_emp_all);
    
    select count(employee_id) 
    into v_emp_dept_50
    from employees
    where department_id = 50;
    dbms_output.put_line('Dept 50 Emp : ' || v_emp_dept_50);
    
    

end;
/

declare
    v_result number;
begin
    select employee_id
    into v_result
    from employees
    where department_id = 0;
end;
/


-- Ư���� �μ��� ���Ի���� ���
-- �����ȣ�� ���� ��ϵ� �����ȣ���� 1
-- �޿��� �ش� �μ��� ���� ���� �޿��� ���

declare
    v_deptno number := &deptno;
    v_empId number;
    v_ename employees.last_name%type := '&ename';
    v_sal number;
begin
    select max(employee_id)
    into v_empId
    from employees;
    
    v_empId := v_empId +1;
    
    insert into employees(employee_id,last_name,email,hire_date,job_id)
    values(v_empId, v_ename, (v_ename||'@yedam.com'),sysdate,'IT_PROG');
    
    select min(salary)
    into v_sal
    from employees
    where department_id = v_deptno;
    
    update employees
    set salary = v_sal
        
    where employee_id = v_empId;
    
    dbms_output.put_line('��ϵ� ���Ի���� �����ȣ�� ' || v_empId || ' �Դϴ�.');
end;
/

select * 
from employees 
where employee_id =301;

/*
1. �����ȣ�� �Է�(ġȯ�������&)�� ���
    �����ȣ, ����̸�, �μ��̸���
    ����ϴ� PL/sql�� �ۼ��Ͻÿ� */
    
declare
    v_empno employees.employee_id%TYPE;
    v_last_name employees.last_name%TYPE;
    v_dept_name departments.department_name%TYPE;
begin
    select e.employee_id, e.last_name, d.department_name
    into v_empno, v_last_name, v_dept_name
    from employees e join departments d on(e.department_id = d.department_id)
    where employee_id = &eid;
    dbms_output.put_line('�����ȣ :' ||' '|| v_empno ||' '|| '����̸� : ' ||' '|| v_last_name ||' '|| '�μ��̸� : ' ||' '|| v_dept_name );    
end;
/

/*
2. �����ȣ�� �Է�(ġȯ�������)�� ���
����̸�, �޿�, ����->(�޿�*12 +(nvl(�޿�,0)*nvl(Ŀ�̼��ۼ�Ʈ,0)*12))
�� ����ϴ� PL/sql*/

--Ǯ�� 1 select�� �ϳ��� ���



declare
    v_ename employees.last_name%TYPE;
    v_sal employees.salary%TYPE;
    v_annual_sal employees.salary%TYPE;
begin
        select last_name, salary, salary*12 +(NVL(salary, 0) * NVL(commission_pct, 0) * 12)
        into v_ename, v_sal, v_annual_sal
        from employees
        where employee_id = &eid;

    DBMS_output.put_line('��� �̸�: ' || v_ename ||' '|| '�޿� : ' ||' '|| v_sal ||' '|| '���� : ' ||' '|| v_annual_sal);
end;
/


-- Ǯ��2 ������ �������
declare
         v_ename employees.last_name%TYPE;
        v_sal employees.salary%TYPE;
        v_comm employees.salary%TYPE;
        v_annual_sal employees.salary%TYPE;
begin
    select last_name, salary, commission_pct
    into v_ename, v_sal, v_comm
    from employees
    where employee_id = &eid;
    
    v_annual_sal := v_sal * 12 + (nvl(v_sal,0) * nvl(v_comm, 0) * 12);
    DBMS_output.put_line('��� �̸�: ' || v_ename ||' '|| '�޿� : ' ||' '|| v_sal ||' '|| '���� : ' ||' '|| v_annual_sal);
end;
/



begin
    update employees
    set salary = salary + 100
    where department_id = 50;
    
    dbms_output.put_line('���� �λ� ��� : ' || sql%rowcount);
end;
/

-- Ư�� ����� �Ŵ��� ������ ����ϼ���
-- ��, �Ŵ����� �������� ���� ��� ������ �ȳ� �޽����� ����ϼ���.

declare     
    v_empid employees.employee_id%TYPE :=&eid;
    v_mgr employees.manager_id%TYPE;
    v_mgr_name employees.last_name%TYPE;
begin
    select manager_id
    into v_mgr
    from employees
    where employee_id = v_empid;
    
    if v_mgr IS NULL then 
        DBMS_output.put_line('�Ŵ����� �������� �ʽ��ϴ�');
    else 
        select last_name
        into v_mgr_name
        from employees
        where employee_id = v_mgr;
        
        DBMS_output.put_line('�Ŵ����� ' || v_mgr_name || '�Դϴ�.');
    end if;
end;
/

-- �����ȣ�� �������� Ȯ���ϰ� ������ �������� Ȯ��

declare
    v_empid employees.employee_id%TYPE := &�����ȣ;
    v_job employees.job_id%TYPE;
    v_sal employees.salary%TYPE;
begin
    select job_id
    into v_job
    from employees
    where employee_id = v_empid;
    
    if v_job like '%IT%' then
        v_sal := 10000;
        dbms_output.put_line('����� ������ ' || v_job || '�̰� �޿��� '|| v_sal || '�Դϴ�.');
        else 
         select salary
         into v_sal
         from employees
         where employee_id = v_empid;
         
         dbms_output.put_line('����� ������ ' || v_job || '�̰� �޿��� '|| v_sal || '�Դϴ�.');
    end if;
    
        
end;
/

-- ���̸� �Է¹޾� ������ �Ƶ�, �ʵ��л�, ���л�, ����л�, ����

declare
    v_age number(3,0) not null := &����;
    

begin -- �������� ������ �����
    if v_age < 8 then -- 8�̸��� ������
        dbms_output.put_line('������ �Ƶ��Դϴ�.');
    elsif v_age < 14 then -- 8 �̻� 14 �̸� 
        dbms_output.put_line('�ʵ��л��Դϴ�.');
    elsif v_age < 17 then -- 14 �̻� 17 �̸�
        dbms_output.put_line('���л��Դϴ�.');
    elsif v_age <20 then -- 17 �̻� 20 �̸�
        dbms_output.put_line('����л��Դϴ�.');
    else -- 20 �̻�
        dbms_output.put_line('�����Դϴ�.');
    end if;

end;
/

/*
3-2
�����ȣ�� �Է��� ���
�Ի����� 2000�� ����(2000�� ����)�̸� 'New employee'���
        2000�� �����̸� 'Career employee' ���
��, DBMS_output.put_line ~ �� �ѹ��� ���
*/

declare
    v_empno employees.employee_id%TYPE;
    v_hiredate employees.hire_date%TYPE;
    v_chat varchar2(30);

begin
    select hire_date
    into v_hiredate
    from employees
    where employee_id = &eid;
    
    if to_char(v_hiredate,'yyyy') >= '2000' 
    -- if v_hiredate >= TO_DATE('2000-01-01','yyyy-MM-dd')
    
    then v_chat :='New employee' ;
    
    else v_chat :='Career employee';
    
    end if;
    
    dbms_output.put_line('��� : ' || v_chat);
    
    

end;
/




/*
6.
�����ȣ�� �Է��� ���
�ش� ����� �����ϴ� PL/SQL�� �ۼ��ϼ���.
��, �ش����� ���� ��� "�ش� ����� �����ϴ�." ���
*/

create table test_emp
as 
    select * from employees;

select * from test_emp;

--Ǯ�� 1
DECLARE
    v_empid employees.employee_id%type := &�����ȣ;
    v_count number;

begin
    select count(*)
    into v_count
    from test_emp
    where employee_id = v_empid;
    
    if v_count = 0 then
        dbms_output.put_line('�ش� ����� �����ϴ�.');
    else
        delete from test_emp
        where employee_id = v_empid;
    end if;    
        
end;
/

--Ǯ��2(Ŀ�����)
    
begin
    
    delete from test_emp
    where employee_id = &eid;
    
    if SQL%ROWCOUNT = 0 then
    dbms_output.put_line('�ش� ����� �����ϴ�.');
        
    end if;
end;
/


select * from test_emp;


-- 1���� 10���� ��� ������ ���� ���ؼ� ���
-- �⺻ LOOP
DECLARE
    v_counter number(2,0) := 1;
    v_sum number(2,0) := 0;
begin
    loop
        v_sum := v_sum + v_counter;
        v_counter := v_counter + 1;
        exit when v_counter > 10;
    end loop;
        dbms_output.put_line('��� : ' || v_sum);
        
end;
/

-- for LOOP
declare
    v_sum number(2,0) := 0;
begin
    for i in 1..10 loop
        v_sum := v_sum + i;
    
    end loop;
    dbms_output.put_line('��� : ' || v_sum);

end;
/

-- WHILE LOOP
declare
    v_counter number(2,0) := 1;
    v_sum number(2,0) := 0;
begin
    while v_counter <= 10 loop
        v_sum := v_sum + v_counter;
        v_counter := v_counter + 1;
    end loop;
    dbms_output.put_line('��� : '|| v_sum);
end;
/

-- �⺻ LOOP <-> while loop 

--1) while loop -> �⺻ loop
declare
    v_counter number(2,0) := 1;
    v_sum number(2,0) := 0;
begin
     loop
        v_sum := v_sum + v_counter;
        v_counter := v_counter + 1;
        exit when v_counter > 10;  -- �ε�ȣ ���ݴ�
    end loop;
    dbms_output.put_line('��� : '|| v_sum);
end;
/

--2) �⺻ loop -> while loop

declare
    v_counter number(2,0) := 1;
    v_sum number(2,0) := 0;
begin
     while v_counter <= 10 loop 
        v_sum := v_sum + v_counter;
        v_counter := v_counter + 1;
        
    end loop;
    dbms_output.put_line('��� : '|| v_sum);
end;
/

rollback;