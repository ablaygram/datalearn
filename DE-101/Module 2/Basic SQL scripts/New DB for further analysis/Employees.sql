-- ************************************** company_info

CREATE TABLE company_info
(
 id_company        int NOT NULL,
 company_residence varchar(10) NOT NULL,
 remote_ratio      int NOT NULL,
 company_location  varchar(10) NOT NULL,
 company_size      varchar(10) NOT NULL,
 CONSTRAINT PK_1 PRIMARY KEY ( id_company )
);

-- ************************************** salary_info

CREATE TABLE salary_info
(
 salary_id       int NOT NULL,
 salary          int NOT NULL,
 salary_currency varchar(10) NOT NULL,
 salary_in_usd   int NOT NULL,
 CONSTRAINT PK_2 PRIMARY KEY ( salary_id )
);

-- ************************************** employee_info

CREATE TABLE employee_info
(
 id_employee      int NOT NULL,
 salary_id        int NOT NULL,
 id_company       int NOT NULL,
 work_year        date NOT NULL,
 experience_level varchar(10) NOT NULL,
 employment_type  varchar(10) NOT NULL,
 job_title        varchar(50) NOT NULL,
 CONSTRAINT PK_3 PRIMARY KEY ( id_employee ),
 CONSTRAINT FK_1 FOREIGN KEY ( salary_id ) REFERENCES salary_info ( salary_id ),
 CONSTRAINT FK_2 FOREIGN KEY ( id_company ) REFERENCES company_info ( id_company )
);

CREATE INDEX FK_2 ON employee_info
(
 salary_id
);

CREATE INDEX FK_3 ON employee_info
(
 id_company
);