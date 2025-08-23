# 🌍 REST Countries API Project

A full-stack web application that provides comprehensive information about countries around the world. Built with modern technologies and best practices.

![Angular](https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white) ![Spring Boot](https://img.shields.io/badge/Spring_Boot-6DB33F?style=for-the-badge&logo=spring-boot&logoColor=white) ![TypeScript](https://img.shields.io/badge/TypeScript-007ACC?style=for-the-badge&logo=typescript&logoColor=white) ![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white) ![MySQL](https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white)

## 📋 Table of Contents

- [Features](#-features)
- [Architecture](#️-architecture)
- [Tech Stack](#️-tech-stack)
- [Project Structure](#-project-structure)
- [Getting Started](#-getting-started)
- [Development](#-development)
- [API Endpoints](#-api-endpoints)
- [Frontend Features](#-frontend-features)
- [Data Processing](#-data-processing)
- [Contributing](#-contributing)
- [License](#-license)

## 🚀 Features

- **🌍 Comprehensive Country Data**: Access detailed information about all countries
- **🔍 Advanced Search & Filtering**: Find countries by name, region, or other criteria
- **📱 Responsive Design**: Beautiful UI that works on all devices
- **🌙 Dark/Light Mode**: Toggle between different themes
- **⚡ Real-time Updates**: Live data from REST Countries API
- **📊 Rich Information**: Population, capital, languages, currencies, and more
- **🚀 Fast Performance**: Optimized for speed and user experience

## 🏗️ Architecture

This project follows a **microservices architecture** with three main components:

```
┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│  Frontend   │◄──►│   Backend   │◄──►│    Utils    │
│  (Angular)  │    │(Spring Boot)│    │(Data Tools) │
└─────────────┘    └─────────────┘    └─────────────┘
```

## 🛠️ Tech Stack

### Frontend 🎨

- **Framework**: Angular 15.2.0
- **Language**: TypeScript 4.9.4
- **Styling**: SCSS with custom variables and mixins
- **State Management**: RxJS for reactive programming
- **Build Tool**: Angular CLI

### Backend ⚙️

- **Framework**: Spring Boot 3.5.4
- **Language**: Java 24
- **Database**: MySQL
- **Build Tool**: Maven
- **Dependencies**: Spring Web, Spring JDBC, Lombok

### Utils 🔧

- **Language**: TypeScript 5.9.2
- **Runtime**: Node.js
- **Tools**: ts-node for development

## 📁 Project Structure

```
REST Countries API/
├── 🎨 frontend/                 # Angular application
│   ├── src/app/
│   │   ├── components/         # Reusable UI components
│   │   ├── services/           # Business logic & API calls
│   │   └── types.ts            # TypeScript interfaces
│   ├── src/styles/             # Global styles & variables
│   └── angular.json            # Angular configuration
├── ⚙️ backend/                  # Spring Boot API
│   ├── src/main/java/
│   │   └── com/example/backend/
│   │       ├── Controller.java  # REST endpoints
│   │       ├── Country.java     # Entity model
│   │       └── Repository.java  # Data access layer
│   └── pom.xml                 # Maven dependencies
└── 🔧 utils/                    # Data processing tools
    ├── getOnlyProperKeys.ts    # Data transformation
    ├── data.json               # Raw country data
    └── data-transformed.json   # Processed data
```

## ⚡ Getting Started

### Prerequisites 📋

- **Java 24** or higher
- **Node.js 18** or higher
- **MySQL 8.0** or higher
- **Angular CLI 15.2.11**

### Installation 🚀

1. **Clone the repository**

   ```bash
   git clone <repository-url>
   cd REST-Countries-API
   ```

2. **Backend Setup** ⚙️

   ```bash
   cd backend
   mvn clean install
   mvn spring-boot:run
   ```

   The backend will start on `http://localhost:8080`

3. **Frontend Setup** 🎨

   ```bash
   cd frontend
   npm install
   ng serve
   ```

   The frontend will be available at `http://localhost:4200`

4. **Database Setup** 🗄️
   - Create a MySQL database
   - Update `application.properties` with your database credentials
   - Run the application to auto-create tables

## 🔧 Development

### Backend Development 🐛

```bash
cd backend
mvn spring-boot:run
```

**Key Features:**

- RESTful API endpoints
- MySQL database integration
- CORS configuration
- Lombok for boilerplate reduction

### Frontend Development 🎯

```bash
cd frontend
ng serve --open
```

**Key Features:**

- Component-based architecture
- Reactive forms
- Service-based data management
- Responsive design with SCSS

### Utils Development 🔧

```bash
cd utils
npm run build
```

**Key Features:**

- Data transformation scripts
- TypeScript utilities
- Data processing tools

## 📊 API Endpoints

| Method | Endpoint                         | Description              |
| ------ | -------------------------------- | ------------------------ |
| `GET`  | `/api/countries`                 | Get all countries        |
| `GET`  | `/api/countries/{id}`            | Get country by ID        |
| `GET`  | `/api/countries/search`          | Search countries by name |
| `GET`  | `/api/countries/region/{region}` | Get countries by region  |

## 🎨 Frontend Features

- **🔍 Search Component**: Real-time search with debouncing
- **🎛️ Filter Component**: Filter by region, population, etc.
- **📱 Country Cards**: Beautiful display of country information
- **🌙 Theme Toggle**: Switch between light and dark modes
- **📱 Responsive Layout**: Mobile-first design approach

## 🔄 Data Processing

The `utils` folder contains tools for:

- **Data Transformation**: Converting raw API data to application format
- **Key Extraction**: Filtering and processing country data
- **Data Validation**: Ensuring data integrity and consistency

## 🤝 Contributing

We welcome contributions! Here's how you can help:

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/AmazingFeature`)
3. **Commit** your changes (`git commit -m 'Add some AmazingFeature'`)
4. **Push** to the branch (`git push origin feature/AmazingFeature`)
5. **Open** a Pull Request

### Development Guidelines 📝

- Follow Angular style guide for frontend code
- Use Spring Boot best practices for backend
- Write meaningful commit messages
- Add tests for new features
- Update documentation as needed

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **REST Countries API** for providing comprehensive country data
- **Spring Boot** team for the excellent framework
- **Angular** team for the powerful frontend framework
- **Open Source Community** for inspiration and tools

---

<div align="center">
  <p>Made with ❤️ by the development team</p>
  <p>🌍 Exploring the world, one country at a time</p>
</div>
