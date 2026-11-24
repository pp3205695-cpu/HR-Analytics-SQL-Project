create table employees (
    EMPLOYEE_ID INT primary key,
    FIRST_NAME VARCHAR(20),
    LAST_NAME VARCHAR(20),
    EMAIL VARCHAR(25),
    PHONE_NUMBER VARCHAR(20),
    HIRE_DATE DATE,
    JOB_ID VARCHAR(10),
    SALARY int,
    COMMISSION_PCT decimal(2, 2),
    MANAGER_ID INT,
    DEPARTMENT_ID INT
);



create table departments (
        DEPARTMENT_ID int primary key,
        DEPARTMENT_NAME VARCHAR(30),
        MANAGER_ID int,
        LOCATION_ID int


CREATE TABLE COUNTRIES (
        COUNTRY_ID VARCHAR(2) PRIMARY KEY,
        COUNTRY_NAME VARCHAR(40),
        REGION_ID INT
    );



CREATE TABLE LOCATIONS (
        LOCATION_ID INT PRIMARY KEY,
        STREET_ADDRESS VARCHAR(40),
        POSTAL_CODE VARCHAR(12),
        CITY VARCHAR(30),
        STATE_PROVINCE VARCHAR(25),
        COUNTRY_ID VARCHAR(2)
    );





CREATE TABLE JOBS (
        JOB_ID VARCHAR(10) PRIMARY KEY,
        JOB_TITLE VARCHAR(35),
        MIN_SALARY INT,
        MAX_SALARY INT
    );


CREATE TABLE JOB_HISTORY (
        EMPLOYEE_ID INT,
        START_DATE DATE,
        END_DATE DATE,
        JOB_ID VARCHAR(10),
        DEPARTMENT_ID INT
    );


CREATE TABLE REGIONS (
        REGION_ID INT PRIMARY KEY,
        REGION_NAME VARCHAR(25)
    );