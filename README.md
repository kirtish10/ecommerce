# E-Commerce Backend Application

## Overview
This project is an E-Commerce backend application built using **Spring Boot** and follows a **Microservices Architecture**. It is designed to handle various aspects of an e-commerce platform, such as user management, product catalog, order processing, and service discovery.

## Features
- **Microservices Architecture**: Each service is independently deployable and scalable.
- **Service Discovery**: Eureka Server is used for service registration and discovery.
- **Centralized Configuration**: Config Server manages externalized configurations for all microservices.
- **Resiliency**: Circuit breaker patterns can be implemented using tools like Hystrix.
- **Docker Support**: Services can be containerized and orchestrated using Docker Compose.

## Microservices
The application consists of the following microservices:

1. **Config Server**
   - Centralized configuration management for all microservices.
   - Runs on port `8888`.

2. **Discovery Service**
   - Eureka Server for service registration and discovery.
   - Runs on port `8761`.

3. **Product Service**
   - Manages product catalog and inventory.
   - Example endpoints:
     - `GET /products` - Fetch all products.
     - `POST /products` - Add a new product.

4. **Order Service**
   - Handles order creation and management.
   - Example endpoints:
     - `POST /orders` - Create a new order.
     - `GET /orders/{id}` - Fetch order details.

5. **User Service**
   - Manages user accounts and authentication.
   - Example endpoints:
     - `POST /users` - Register a new user.
     - `POST /login` - Authenticate a user.

## Prerequisites
- **Java 17** or higher
- **Maven**
- **Docker** (optional, for containerization)

## Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/your-repo/ecommerce-backend.git
cd ecommerce-backend
```

### 2. Build the Project
```bash
mvn clean install
```

### 3. Run the Microservices
Each microservice can be started individually. For example:
```bash
cd services/config-server
mvn spring-boot:run
```

Alternatively, you can use Docker Compose to start all services:
```bash
docker-compose up
```

### 4. Access the Services
- Config Server: [http://localhost:8888](http://localhost:8888)
- Discovery Service: [http://localhost:8761](http://localhost:8761)
- Other services will run on their respective ports.

## Configuration
- Configuration files for each service are located in the `src/main/resources` directory.
- Centralized configurations for all services are managed by the Config Server.

## Technologies Used
- **Spring Boot**
- **Spring Cloud** (Eureka, Config Server)
- **Maven**
- **Docker**
- **Java 17**

## Contributing
Contributions are welcome! Please fork the repository and create a pull request.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

---

Happy Coding! 🚀
