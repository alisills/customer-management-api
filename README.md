# Customer Management API

## 📈The Business Problem
API built with API life cycle manipulating data using MySQL database and Salesforce. Design center was used to develop the RAML and then added to AnypointStudio using APIkit. 

## 📂 Detailed API Flow
<details>
  <summary><b>Click to expand Screenshot</b></summary>
  <br>
  <p align="center">
    <img src="assets\salesforce-sync-implementation-flow.png" width="750" alt="API Salesforce Sync Flow">
  </p>
</details>

## 💾 Technologies

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white) ![Salesforce](https://img.shields.io/badge/Salesforce-00A1E0?style=for-the-badge&logo=salesforce&logoColor=white)

### 🔹 API Design
- **Design Center** - Used to author the API specification in RAML 1.0.
- **RAML 1.0** -  Defined `GET`, `POST`, `PUT`, and `DELETE` methods to read, create, update, and delete customer data.
- **APIkit** - Generated flow scaffolding from RAML and enabled request routing.
- **Anypoint Studio** - Implemented Mule flows using Database Connector,Salesforce Connector, and Choice Router with Raise Error for conditional error handling.
### 🔹 Integration Development
- **DataWeave 2.0** - Developed a function to convert a row from the `customers` table into the API's customer object and used Transform Message components to map and construct customer data.
- **Mule Runtime** - Executes Mule flows to create or update accounts in Salesforce and create, update, retrieve, and delete customers from MySQL.
### 🔹 Data & Connectivity
- **MySQL** - Used as the relational database to store and access customer records via Database Connector.
- **Salesforce Connector** - Integrated with the Salesforce CRM to create and update Salesforce Account records.
### 🔹Security & Configuration
- **Secure Configuration Properties** - Encrypted MySQL database password, Salesforce password, and Salesforce security token using the Secure Properties Generator and configured MuleSoft to access them securely.
### 🔹 Testing & Build
- **Postman** - Created a collection using an Postman environment variables to manually test `GET`, `PUT`, `POST`, `DELETE`, and verify `200`, `201`, `400`, `404`, `405`, and `409` status codes.
- **MUnit** - Developed automated tests to validate business logic using Mock When, Assert That, Assert Equals, and Verify Call to confirm expected results.
