# demo-rrhh-service

Servicio de gestión de empleados y departamentos con **Spring Boot**, **MariaDB** y **Docker Compose**.

## 🚀 Descripción

Este proyecto implementa un backend simple para administrar empleados, departamentos y salarios.  
Está construido con **Spring Boot** y utiliza **MariaDB** como base de datos relacional.  
La infraestructura se levanta con **Docker Compose**, lo que permite ejecutar la aplicación y la base de datos en contenedores separados.

---

## 📂 Estructura del proyecto

- `src/main/java/com/example/demo/model/` → Entidades JPA (`Employee`, `Department`, etc.)
- `src/main/java/com/example/demo/repository/` → Repositorios Spring Data JPA
- `src/main/java/com/example/demo/controller/` → Controladores REST
- `src/main/resources/init.sql` → Script SQL para inicializar la base de datos
- `docker-compose.yml` → Configuración de servicios Docker (app + db)
- `application.properties` → Configuración de conexión a la base de datos

---

## ⚙️ Configuración

### Base de datos
- Motor: **MariaDB 10.6**
- Nombre de base: `rrhh`
- Usuario: `root`
- Password: `Root1234*`

Las tablas se crean automáticamente al levantar el contenedor gracias al script `init.sql`.

### Spring Boot
- Puerto por defecto: `8080`
- Conexión a la base: definida en `application.properties`
- Hibernate configurado con:
  ```properties
  spring.jpa.hibernate.ddl-auto=none
  spring.jpa.show-sql=true
  spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MariaDBDialect

  git clone https://github.com/MilenaVU/demo-rrhh-service.git
cd demo-rrhh-service


COMO EJECUTAR 
1.Clonar el repositorio:
git clone https://github.com/MilenaVU/demo-rrhh-service.git
cd demo-rrhh-service
2. Construir el proyecto con Maven: mvn clean package
3. Levantar los contenedores: docker-compose up --build
4.Verificar que los servicios estén corriendo:
App: http://localhost:8080
DB: puerto interno 3306

📡 Endpoints principales
----------Departamentos--------------
GET /departments → Lista todos los departamentos
POST /departments → Crea un nuevo departamento
GET /departments/{id} → Obtiene un departamento por ID
PUT /departments/{id} → Actualiza un departamento
DELETE /departments/{id} → Elimina un departamento

---------Empleados----------
GET /employees → Lista todos los empleados
POST /employees → Crea un nuevo empleado
GET /employees/{id} → Obtiene un empleado por ID
PUT /employees/{id} → Actualiza un empleado
DELETE /employees/{id} → Elimina un empleado


--------Tecnologías usadas
Spring Boot
MariaDB
Docker Compose
Maven
Git

