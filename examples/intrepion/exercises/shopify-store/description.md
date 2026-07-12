# Shopify Store

## Overview

Build a multi-service e-commerce application that synchronizes product and order data from Shopify to a local database, manages custom business data, and serves different user experiences for customers and internal staff. The application must enforce role-based access control to separate customers from internal users, and must securely protect sensitive Shopify API credentials from being exposed to unauthorized parties.

## Architecture

The application is composed of the following distinct components:

- **Storefront clients** — Customer-facing interfaces for browsing products, viewing products, and placing orders.
- **Internal clients** — Staff-facing interfaces for managing inventory, viewing analytics, and performing administrative tasks.
- **Database** — A persistent store that holds Shopify-synchronized data and custom business tables.
- **Server** — The central service that synchronizes data from Shopify, manages custom tables, and serves requests from both storefront and internal clients.
- **Authentication and authorization system** — A login system that authenticates users and enforces role-based permissions, protecting sensitive API keys from leakage.

The components communicate over a network. The server is the central hub: both storefront and internal clients send requests to the server, and the server interacts with the database and Shopify API on behalf of those clients.

## Functional Requirements

### Storefront Clients

- **Browse products** — Display a list of products available in the store with relevant details (e.g., name, price, description, availability).
- **View product details** — Show full details for a specific product by its identifier.
- **Search products** — Allow customers to search for products by name, description, or tag.
- **Place an order** — Allow customers to add items to a cart and submit an order.
- **View order status** — Allow customers to view the status of their placed orders.
- **Public access** — Storefront clients do not require authentication.

### Internal Clients

- **Product management** — Allow internal users to view, create, edit, and delete products. These operations may modify custom attributes not managed by Shopify.
- **Inventory management** — Allow internal users to view stock levels and update inventory counts.
- **Order management** — Allow internal users to view, update, and process orders.
- **Analytics dashboard** — Display aggregate statistics such as total revenue, number of orders, and popular products.
- **Custom data management** — Allow internal users to manage custom business tables (e.g., supplier notes, shipping preferences, marketing tags).
- **Authentication required** — All internal client requests must include valid authentication credentials.

### Database

- **Shopify-synchronized tables** — Store product data, order data, customer data, and other entities that are sourced from Shopify. These tables reflect the current state of the Shopify store.
- **Custom tables** — Store business-specific data that is not part of Shopify (e.g., supplier information, internal notes, custom product attributes, shipping rules).
- **Data integrity** — The Shopify-synchronized data is the single source of truth for product and order information. When Shopify data changes, the local tables should reflect those changes.
- **Separation of concerns** — Custom tables must be logically separated from Shopify-synchronized data in the database schema.

### Server

- **Shopify synchronization** — Periodically or on-demand synchronize product, order, and customer data from Shopify to the local database. Shopify is the source of truth, so the server must handle both initial sync and incremental updates.
- **Custom data management** — Expose endpoints for CRUD operations on custom tables.
- **Request routing** — Route incoming requests from storefront clients to appropriate product/order endpoints, and route internal client requests to admin endpoints.
- **Caching** — Cache frequently requested data to reduce load on both Shopify and the database.
- **Concurrency** — Handle concurrent requests from multiple clients safely.
- **Error handling** — Return meaningful error messages when Shopify is unavailable, synchronization fails, or custom data operations fail.

### Authentication and Authorization

- **Login system** — Internal users must provide credentials (e.g., username and password) to authenticate. Storefront clients do not authenticate.
- **Role-based access control (RBAC)** — Users are assigned roles that determine what they can access and modify:
  - **Admin** — Full access to all internal features and all custom data.
  - **Staff** — Limited access to products, orders, and inventory but not analytics or sensitive settings.
  - **Viewer** — Read-only access to products, orders, and analytics.
- **API key protection** — Shopify API credentials (API key, API secret, access tokens) must never be exposed to:
  - Storefront clients (customers must never see API keys).
  - Non-admin internal users (staff and viewer roles must never see API keys).
  - Any other internal client that is not explicitly authorized.
- **Credential storage** — API keys must be stored in a secure manner (e.g., encrypted at rest, separate from application code, protected by access controls).
- **Session management** — After authentication, maintain sessions or tokens that expire after a period of inactivity.
- **Audit logging** — Log authentication events and sensitive data access for accountability.

## Non-Functional Requirements

- **Language-agnostic** — Implement in any programming language.
- **API architecture-agnostic** — Use any API style (REST, GraphQL, gRPC, etc.).
- **Storage-agnostic** — Use any storage mechanism (relational databases, NoSQL, file-based, in-memory with persistence, etc.).
- **Network-agnostic** — Components may communicate over HTTP/HTTPS, gRPC, or any other protocol.
- **Edge case handling** — Handle the following scenarios:
  - Shopify API is temporarily unavailable.
  - A user attempts to access data they are not permitted to see.
  - Concurrent modifications to the same product by different users.
  - A synchronization cycle fails mid-way.
  - A custom data table is empty or has no rows.
  - A user logs in with incorrect credentials.
- **Clear error messages** — Every operation should return a clear success or error message. Errors should be descriptive without exposing sensitive information.
- **Scalability** — The architecture should support adding new services, new roles, or new custom tables without major rewrites.

## Security Considerations

- **Separation of credentials** — Shopify API keys must be stored in an environment variable file, a secrets manager, or another mechanism that keeps them separate from application source code.
- **Access control at the server level** — The server must enforce permissions for every request, not just rely on client-side checks.
- **Data isolation** — Ensure that a staff user cannot access data that an admin-only endpoint provides.
- **Transport security** — Encrypted communication (TLS/HTTPS) should be used between all components.
- **No credential leakage in logs** — Never log API keys, tokens, or other secrets.
- **Password security** — Internal user passwords should be hashed and salted before storage.
