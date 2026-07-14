# Proyecto RRHH - Spring Boot + MariaDB

Este proyecto implementa un servicio REST para gestionar **empleados**, **departamentos** y **ubicaciones**.  
Incluye configuración para ejecutarse en contenedores Docker y una colección de Postman para pruebas.

---

## 🚀 Requisitos previos
- Java 17
- Maven
- Docker y Docker Compose
- Postman

---

## ⚙️ Ejecución local
1. Compilar el proyecto:
   ```bash
   mvn clean package


   Ejecutar la aplicación:

bash
mvn spring-boot:run
Acceder a los endpoints:

http://localhost:8080/employees

http://localhost:8080/departments

http://localhost:8080/locations

🐳 Ejecución con Docker
Construir y levantar los contenedores:

bash
docker-compose up --build
La aplicación quedará disponible en:

API: http://localhost:8080

Base de datos: localhost:3306

📄 Endpoints principales
GET empleados → GET /employees

POST empleados → POST /employees

PUT empleados → PUT /employees/{id}

DELETE empleados → DELETE /employees/{id}
