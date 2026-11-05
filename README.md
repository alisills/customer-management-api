# Customer Management API

## 📈Business Problem
### 🔹 The Problem
Businesses that manage customer information across multiple systems, such as MySQL and Salesforce, may experience challenges with maintaining accurate and consistent customer data. This occurs when duplicate customer records are created and information is not properly managed between systems.
### 🔹 Business Impact
These challenges can result in duplicated information, inaccurate customer records, and inefficient business operations. This affects the organization's ability to retrieve accurate customer information and manage customer data across multiple systems.
### 🔹 The Solution
The customer-management-api addresses these challenges by integrating MySQL and Salesforce to manage customer information. The API allows users to create, retrieve, update, and delete customer records in MySQL while also creating customer Accounts in Salesforce. It checks for duplicate customer IDs and emails to help prevent duplicate records and uses error handling to return clear, readable error messages when integration operations fail.

## 📂 Detailed API Flow
<details>
  <summary><b>Click to expand Screenshots</b></summary>
  <br>
  <p align="center">
    <img src="assets\customer-management-api-post-apikit-route.png" width="750" alt="Route Customer Creation Flow">
    <img src="assets\cross-system-customer-creation-munit-tested.png" width="750" alt="Customer Creation Flow">
    <img src="assets\salesforce-sync-implementation-flow.png" width="750" alt="Salesforce Sync Flow">
    <img src="assets\create-customer-syncs-salesforce-munit.png" width="750" alt="Create Customer Syncs Salesforce MUnit">
    <img src="assets\postman-collection.png" width="750" alt="Postman Collection Snapshot">
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
### 🔹 Security & Configuration
- **Secure Configuration Properties** - Encrypted MySQL database password, Salesforce password, and Salesforce security token using the Secure Properties Generator and configured MuleSoft to access them securely.
### 🔹 Testing & Build
- **Postman** - Created a collection using Postman environment variables to manually test `GET`, `PUT`, `POST`, `DELETE`, and verify `200`, `201`, `400`, `404`, `405`, and `409` status codes.
- **MUnit** - Developed automated tests to validate business logic using Mock When, Assert That, Assert Equals, and Verify Call to confirm expected results.
