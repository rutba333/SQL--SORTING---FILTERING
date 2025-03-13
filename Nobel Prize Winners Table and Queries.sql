---create the NOBEL_WIN table if it does not exists
CREATE TABLE IF NOT EXISTS NOBEL_WIN(
YEAR INTEGER,
SUBJECT TEXT,
WINNER TEXT,
COUNTRY TEXT,
CATEGORY TEXT);

---Insert sample data into the NOBEL_WIN table
INSERT INTO NOBEL_WIN(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
(1970,'PHYSICS','HANNES ALFVEN','SWEDEN','SCIENTIST'),
(1970,'PHYSICS','LOUIS NEEL','FRANCE','SCIENTIST'),
(1971,'PHYSICS','PAUL','FRANCE','SCIENTIST'),
(1971,'CHEMISTRY','HAMILTON','SWEDEN','LINGUIST'),
(1972,'LITERATURE','BERNARD KELSON','GERMANY','ECONOMIST'),
(1972,'ECONOMICS','JOSEPH','RUSSIA','ECONOMIST'),
(1973,'BIOLOGY','PHLIPS','USA','PRIME MINISTER'),
(1980,'BIOLOGY','MARTIN','USA','PRESIDENT'),
(1981,'PHYSIOLOGY','HANNAH','HUNGARY','SCIENTIST'),
(1975,'PHYSICS','PETER','CHILE','SCIENTIST');

---Select all records from the NOBEL_WIN table where the subject does not start with 'P'
SELECT*
FROM NOBEL_WIN
WHERE SUBJECT NOT LIKE 'P%';