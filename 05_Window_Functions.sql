3.WINDOW FUNCTIONS!!!!!!

Query 1: Rank employees by salary
SELECT
    EMPLOYEE_ID,
    FIRST_NAME,
    DEPARTMENT_ID,
    SALARY,
    RANK() OVER (
        ORDER BY SALARY DESC
    ) AS SALARY_RANK
FROM EMPLOYEES;

Query 2: Find top 3 salary employees in each department
SELECT *
FROM (
    SELECT
        EMPLOYEE_ID,
        FIRST_NAME,
        DEPARTMENT_ID,
        SALARY,
        ROW_NUMBER() OVER (
            PARTITION BY DEPARTMENT_ID
            ORDER BY SALARY DESC
        ) AS RN
    FROM EMPLOYEES
)
WHERE RN <= 3
ORDER BY DEPARTMENT_ID, RN;
