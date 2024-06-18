-- 24.06.18 SQL 4일차_02. 집합연산자
-- 1.1. 힙집합
-- 1.1.1. UNION(중복을 허용하지 않음), UNION ALL(중복허용)
    -- UNION 사용조건
    -- 1. 컬럼의 갯수가 같아야 함. 
    -- 2. 컬럼의 데이터타입이 각각 같아야 함.
    
-- 1.2. 교집합
-- 1.2.1. INTERSECT

-- 1.3. 차집합
-- 1.3.1. MINUS
select emp_name, salary from employee
WHERE DEPT_CODE = 'D5'
-- UNION    -- 중복을 허용하지 않음. 중복값 지워짐
UNION ALL
SELECT EMP_NAME, SALARY FROM EMPLOYEE
WHERE SALARY >= 2400000;

select emp_name, salary from employee
WHERE DEPT_CODE = 'D5'
-- UNION    -- 중복을 허용하지 않음. 중복값 지워짐
UNION ALL
SELECT EMP_NAME, TO_NUMBER(EMP_ID) FROM EMPLOYEE
WHERE SALARY >= 2400000;
-- ORA-01790: expression must have same datatype as corresponding expression
-- UNION 사용조건
-- 1. 컬럼의 갯수가 같아야 함. 
-- 2. 컬럼의 데이터타입이 각각 같아야 함.

-- 1.2. 교집합
-- 1.2.1. INTERSECT
select emp_name, salary from employee
WHERE DEPT_CODE = 'D5'
INTERSECT
SELECT EMP_NAME, SALARY FROM EMPLOYEE
WHERE SALARY >= 2400000;
-- 1.3. 차집합
-- 1.3.1. MINUS
select emp_name, salary from employee
WHERE DEPT_CODE = 'D5'
MINUS
SELECT EMP_NAME, SALARY FROM EMPLOYEE
WHERE SALARY >= 2400000;
