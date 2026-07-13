# Shopify Inventory Management System

## Overview

Build a complete e-commerce inventory management application that synchronizes with Shopify as the source of truth. The system consists of three distinct parts: a **Client**, a **Server**, and a **Database**. The application must support role-based access control and secure management of Shopify API credentials.

---

## Part 1: Client Application

The client is a web application used by internal users to interact with inventory data and generate shipping labels.

### Core Features

- **Inventory Management**
  - View current inventory levels for all products and variants
  - Filter and search inventory by product, status, or location
  - Update inventory quantities for internal adjustments (receive, return, damage)
  - View inventory history and audit logs

- **Order Extracts**
  - Create extracts (reports) from Shopify orders that share a specific tag
  - View and filter orders within an extract by date range, fulfillment status, or fulfillment service
  - Export extracts as PDF or CSV for accounting and fulfillment workflows
  - Track extract creation history

- **Label Generation**
  - Generate shipping labels from orders included in an active extract
  - Select a carrier and service level for each label
  - Preview and print labels before confirming
  - Record label generation events in the system

### Requirements

- Responsive, accessible user interface
- Intuitive workflows for each feature area
- Proper validation and error handling
- Loading states and user feedback for async operations

---

## Part 2: Database

The database layer is responsible for synchronizing data with Shopify and providing storage for both synced and custom data.

### Synchronization

- Continuously or on-demand synchronize product and variant data from Shopify
- Shopify is the **source of truth** — all inventory data originates from Shopify
- Track synchronization state (last sync time, sync status, failed records)
- Handle Shopify API pagination, retries, and error conditions
- Support configurable sync intervals and manual sync triggers

### Custom Data

- Support custom tables beyond the core Shopify entities
- Schema design must allow adding new tables without breaking existing functionality
- Custom tables are written to and read from through the same database layer

### Requirements

- Robust error handling and retry logic for Shopify API calls
- Idempotent sync operations to prevent duplicate records
- Data validation before writing to the database
- Clear separation between synced data and custom data

---

## Part 3: Server

The server handles all business logic, Shopify synchronization, authentication, authorization, and data management.

### Shopify API Integration

- Securely store Shopify API credentials (API key, API secret, access token, shop URL)
- Use credentials from environment variables or a secure secrets management system
- **Never expose Shopify API keys to other users**, even those within the same organization
- Support multiple Shopify store configurations per organization

### Authentication & Authorization

- Implement a secure login system with session or token-based authentication
- Enforce **role-based access control (RBAC)** with the following roles:
  - **Admin** — full access to all features, including Shopify API keys and settings
  - **Manager** — access to inventory, extracts, and labels, but not Shopify configuration
  - **Operator** — read-only access to inventory and extracts, can generate labels
  - **Viewer** — read-only access to inventory and extracts only
- Each user belongs to an organization
- Shopify API keys are scoped to specific organizations and are not shared across organizations
- Role-based access must be enforced at both the API layer and the client layer

### Custom Data Management

- Provide CRUD operations for custom tables
- Custom table schemas should be defined and managed through the server
- Support for custom data in extracts and reports

### Requirements

- Secure credential storage and handling
- Role-based access control on every API endpoint
- Audit logging for sensitive operations
- Input validation and sanitization on all endpoints
- Proper error handling and HTTP status codes

---

## Technical Considerations

### Language

- Any programming language is acceptable
- The solution should be idiomatic to whatever language is chosen

### API Design

- Any REST or GraphQL API design is acceptable
- The API should be well-documented

### Storage

- Any database is acceptable (relational, document-oriented, etc.)
- The database schema should be designed for the described requirements and allow for future growth

### Authentication

- Any authentication mechanism is acceptable (OAuth, JWT, session-based, etc.)
- The chosen approach should be appropriate for the scale and requirements of the application

---

## Expected Outcomes

1. A working client application with inventory management, order extracts, and label generation
2. A database layer that synchronizes with Shopify and supports custom tables
3. A server with secure Shopify API integration, authentication, role-based authorization, and data management
4. A complete, testable, and well-structured codebase
