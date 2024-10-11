-- Utilize o comando DESCRIBE para verificar os tipos de dados de cada tabela:

DESCRIBE employee;
DESCRIBE department;
DESCRIBE dept_locations;
DESCRIBE project;
DESCRIBE works_on;
DESCRIBE dependent;

-- Modificar Valores Monetários para DOUBLE

ALTER TABLE employee MODIFY COLUMN Salary DOUBLE;
ALTER TABLE works_on MODIFY COLUMN Hours DOUBLE;

--- Verificar nulos em cada coluna de cada tabela
SELECT * FROM employee WHERE Fname IS NULL OR ...; 
SELECT * FROM department WHERE Dname IS NULL OR ...;
-- (Repita para as demais tabelas)

-- Verificar funcionários sem gerente (Super_ssn nulo)
SELECT * FROM employee WHERE Super_ssn IS NULL;

-- Verifique se os funcionários com Super_ssn nulo são realmente gerentes:

SELECT * FROM employee WHERE Super_ssn IS NULL AND Ssn IN (SELECT Mgr_ssn FROM department);

SELECT * FROM department WHERE Mgr_ssn IS NULL;
 
-- Substitua 'Dnumber' pelo número do departamento sem gerente
UPDATE department SET Mgr_ssn = '888665555' WHERE Dnumber = 1;

-- Verificar horas trabalhadas muito altas (ajuste o valor limite conforme necessário)
SELECT * FROM works_on WHERE Hours > 100;

-- Verificar horas trabalhadas negativas
SELECT * FROM works_on WHERE Hours < 0;
-- Mesclar Consultas employee e departament
SELECT e.*, d.Dname 
FROM employee e 
INNER JOIN department d ON e.Dno = d.Dnumber;

-- Junção de Colaboradores e Nomes dos Gerentes
SELECT e.Fname AS EmployeeFirstName, e.Lname AS EmployeeLastName, 
       m.Fname AS ManagerFirstName, m.Lname AS ManagerLastName
FROM employee e
LEFT JOIN employee m ON e.Super_ssn = m.Ssn;

-- Mesclar Colunas de Nome e Sobrenome

SELECT CONCAT(Fname, ' ', Lname) AS EmployeeName
FROM employee;

-- Mesclar Nomes de Departamentos e Localização

SELECT d.Dname, dl.Dlocation, CONCAT(d.Dname, ' - ', dl.Dlocation) AS DeptLocation
FROM department d
JOIN dept_locations dl ON d.Dnumber = dl.Dnumber;

--  Agrupar Dados por Gerente
SELECT m.Fname AS ManagerFirstName, m.Lname AS ManagerLastName, COUNT(*) AS NumberOfEmployees
FROM employee e
LEFT JOIN employee m ON e.Super_ssn = m.Ssn
GROUP BY m.Fname, m.Lname;

-- Eliminar Colunas Desnecessárias das Tabelas
-- Utilize o comando ALTER TABLE DROP COLUMN para remover as colunas desnecessárias de cada tabela. 