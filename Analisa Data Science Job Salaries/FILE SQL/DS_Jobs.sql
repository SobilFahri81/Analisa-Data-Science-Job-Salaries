CREATE DATABASE P1_DS_Jobs
USE P1_DS_Jobs

CREATE TABLE Jobs (
	jobs_id CHAR(10) NOT NULL PRIMARY KEY,
	CONSTRAINT cekjobs_id CHECK(jobs_id LIKE 'JT[0-9][0-9][0-9][0-9]'),
	job_title VARCHAR(50) NOT NULL,
	salary INTEGER,
	salary_currency CHAR(5),
	salary_in_USD INTEGER,
	salary_in_IDR BIGINT,
	work_year INTEGER
)


CREATE TABLE Country(
	Country_id CHAR(10) NOT NULL PRIMARY KEY,
	CONSTRAINT cekCountry_id CHECK(Country_id LIKE 'CTY[0-9][0-9][0-9]'),
	employee_residence CHAR(5),
	company_location  CHAR(5)
)

CREATE TABLE Levell(
	Level_id CHAR(10) NOT NULL PRIMARY KEY,
	CONSTRAINT cekLevel_id CHECK(Level_id LIKE 'EX[0-9][0-9][0-9]'),
	jobs_id CHAR(10) REFERENCES Jobs ON UPDATE CASCADE ON DELETE CASCADE,
	Country_id CHAR(10) REFERENCES Country ON UPDATE CASCADE ON DELETE CASCADE,
	experience_level VARCHAR(15) NOT NULL,
	employment_type VARCHAR(15) NOT NULL,
	remote_ratio INTEGER,
	company_size VARCHAR(20)
)

SELECT* FROM Jobs
SELECT* FROM Country
SELECT* FROM Levell
