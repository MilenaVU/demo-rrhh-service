-- Crear tabla empleados
CREATE TABLE employees (
  empNo INT AUTO_INCREMENT PRIMARY KEY,
  birthDate DATE,
  firstName VARCHAR(50),
  lastName VARCHAR(50),
  sex CHAR(1),
  hireDate DATE
);

-- Insertar empleados de ejemplo
INSERT INTO employees (birthDate, firstName, lastName, sex, hireDate) VALUES
('1990-01-01', 'Milena', 'García', 'F', '2020-01-01'),
('1985-05-05', 'Juan', 'Pérez', 'M', '2015-06-15'),
('1992-03-12', 'Laura', 'Martínez', 'F', '2018-09-01'),
('1988-07-22', 'Carlos', 'López', 'M', '2012-11-20');

CREATE TABLE departments (
  dept_no CHAR(4) PRIMARY KEY,
  dept_name VARCHAR(40) UNIQUE NOT NULL,
  location_id VARCHAR(40)
);
-- Insertar departamentps  de ejemplo
INSERT INTO departments VALUES
('d001', 'Marketing', 'Bogotá'),
('d002', 'Finance', 'Medellín'),
('d003', 'Human Resources', 'Cali'),
('d004', 'IT', 'Barranquilla');


-- Crear tabla relación empleados-departamentos
CREATE TABLE dept_emp (
  empNo INT,
  deptNo CHAR(4),
  fromDate DATE,
  toDate DATE,
  PRIMARY KEY (empNo, deptNo),
  FOREIGN KEY (empNo) REFERENCES employees(empNo),
  FOREIGN KEY (deptNo) REFERENCES departments(deptNo)
);

-- Insertar relaciones empleados-departamentos
INSERT INTO dept_emp VALUES
(1, 'd004', '2020-01-01', NULL),
(2, 'd002', '2015-06-15', NULL),
(3, 'd001', '2018-09-01', NULL),
(4, 'd003', '2012-11-20', NULL);

-- Crear tabla salarios
CREATE TABLE salaries (
  empNo INT,
  salary INT NOT NULL,
  fromDate DATE,
  toDate DATE,
  PRIMARY KEY (empNo, fromDate),
  FOREIGN KEY (empNo) REFERENCES employees(empNo)
);

-- Insertar salarios
INSERT INTO salaries VALUES
(1, 3500, '2020-01-01', NULL),
(2, 5000, '2015-06-15', NULL),
(3, 4000, '2018-09-01', NULL),
(4, 4500, '2012-11-20', NULL);
