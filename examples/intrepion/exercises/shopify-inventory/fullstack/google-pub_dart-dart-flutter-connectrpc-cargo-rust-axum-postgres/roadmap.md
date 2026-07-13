# Roadmap: Shopify Inventory Management System

## Protocol Definition (Protobuf / ConnectRPC)
1. Define the protobuf service file for the Shopify Inventory service with service name and RPC method names
2. Define the InventoryResponse message type with id, sku, product_title, variant_title, quantity, available quantity, and location fields
3. Define the InventorySearchRequest message type with optional product_id, location_id, and status filter fields
4. Define the InventoryAdjustRequest message type with id, quantity delta, reason, and notes fields
5. Define the InventoryAdjustResponse message type with id and success boolean fields
6. Define the ExtractCreateRequest message type with tag, start_date, and end_date fields
7. Define the ExtractFilterRequest message type with extract_id, start_date, end_date, fulfillment_status, and fulfillment_service fields
8. Define the ExtractResponse message type with id, tag, order_count, created_at, and status fields
9. Define the ExtractListResponse message type with a repeated list of ExtractResponse items
10. Define the LabelGenerateRequest message type with extract_id, carrier, service_level, and address fields
11. Define the LabelGenerateResponse message type with id, label_url, carrier, service_level, and status fields
12. Define the UserResponse message type with id, email, name, role, and organization_id fields
13. Define the LoginRequest message type with email and password fields
14. Define the LoginResponse message type with access_token and user_id fields
15. Define the ErrorResponse message type with a message and code fields
16. Define the ShopifyStoreConfigRequest message type with shop_url, api_key, api_secret, and access_token fields
17. Define the ShopifyStoreConfigResponse message type with id and success boolean fields
18. Define the SyncStatusResponse message type with last_sync_at, status, and failed_count fields
19. Add the protobuf plugin configuration to the Rust Cargo.toml for proto code generation
20. Add the Dart protobuf dependency to the Flutter pubspec.yaml for client code generation

## Database Schema
21. Create a PostgreSQL database for the Shopify Inventory Management System
22. Define the organizations table schema with columns for id, name, and created_at
23. Define the users table schema with columns for id, email, password_hash, name, role, and organization_id with foreign key
24. Define the shopify_stores table schema with columns for id, organization_id, shop_url, api_key, api_secret, and access_token with foreign key
25. Define the inventory table schema with columns for id, shopify_product_id, sku, product_title, variant_title, quantity, available_quantity, location_id, and synced_at
26. Define the inventory_locations table schema with columns for id, name, and address fields
27. Define the inventory_audit_log table schema with columns for id, inventory_id, user_id, action, quantity_delta, reason, notes, and created_at
28. Define the extracts table schema with columns for id, tag, start_date, end_date, fulfillment_status, fulfillment_service, created_at, and updated_at
29. Define the extract_orders table schema with columns for id, extract_id, shopify_order_id, fulfillment_status, and created_at
30. Define the labels table schema with columns for id, extract_id, carrier, service_level, shopify_order_id, label_url, status, and created_at
31. Define the sync_status table schema with columns for id, shopify_store_id, last_sync_at, status, failed_count, and updated_at
32. Define a database migration file for all core tables with auto-incrementing primary keys and foreign keys
33. Define indexes on frequently queried columns for inventory, extracts, and labels tables
34. Create a schema for custom tables that can be added without breaking existing functionality

## Server Project Setup (Rust + Axum + ConnectRPC)
35. Create a new Rust project using cargo new with a proper project name for the Shopify Inventory server
36. Add the connect-rpc crate to Cargo.toml for the ConnectRPC protocol implementation
37. Add the axum crate to Cargo.toml as the HTTP web framework for handling requests
38. Add the tokio crate to Cargo.toml as the async runtime for handling concurrent requests
39. Add the tokio-postgres crate to Cargo.toml for PostgreSQL database access
40. Add the serde crate with the derive feature to Cargo.toml for serializing and deserializing structs
41. Add the serde_json crate to Cargo.toml for JSON request and response body handling
42. Add the prost crate to Cargo.toml for protobuf encoding and decoding
43. Add the prost-types crate to Cargo.toml for standard protobuf type definitions
44. Add the thiserror crate to Cargo.toml for defining error types with trait implementations
45. Add the tower crate to Cargo.toml for middleware composition and service traits
46. Add the tower-http crate to Cargo.toml for HTTP middleware utilities
47. Add the uuid crate to Cargo.toml for generating unique identifiers
48. Add the bcrypt crate to Cargo.toml for password hashing
49. Add the chrono crate to Cargo.toml for date and time handling
50. Add the reqwest crate to Cargo.toml for making HTTP requests to Shopify API
51. Add the dotenv crate to Cargo.toml for loading environment variables
52. Create the main.rs entry point file with the axum server configuration and listener binding
53. Create the db.rs module file with database connection setup and pool management
54. Create the auth.rs module file with Google OAuth 2.0 login and JWT token generation
55. Create the rbac.rs module file with role-based access control middleware
56. Create the shopify_client.rs module file with Shopify API client and credential management
57. Create the inventory_service.rs module file for inventory CRUD operations
58. Create the extract_service.rs module file for extract management
59. Create the label_service.rs module file for label generation
60. Create the sync_service.rs module file for Shopify data synchronization
61. Create the custom_tables.rs module file for dynamic custom table management

## Server Data Models and Database Operations
62. Define a User struct in the models module with id, email, password_hash, name, role, and organization_id fields
63. Define a ShopifyStoreConfig struct with id, organization_id, shop_url, api_key, api_secret, and access_token fields
64. Define an Inventory struct with id, shopify_product_id, sku, product_title, variant_title, quantity, available_quantity, location_id, and synced_at fields
65. Define an InventoryAdjust request struct with id, quantity_delta, reason, and notes fields
66. Define an Extract struct with id, tag, start_date, end_date, fulfillment_status, fulfillment_service, created_at, and updated_at fields
67. Define an ExtractOrder struct with id, extract_id, shopify_order_id, fulfillment_status, and created_at fields
68. Define a Label struct with id, extract_id, carrier, service_level, shopify_order_id, label_url, status, and created_at fields
69. Define a SyncStatus struct with id, shopify_store_id, last_sync_at, status, failed_count, and updated_at fields
70. Define a LoginRequest struct with email and password fields
71. Define a LoginResponse struct with access_token and user_id fields
72. Define a ShopifyStoreConfigRequest struct with shop_url, api_key, api_secret, and access_token fields
73. Define a ShopifyStoreConfigResponse struct with id and success boolean fields
74. Implement a function to establish a PostgreSQL connection pool
75. Implement a function to fetch all users from the database
76. Implement a function to fetch a user by email or ID
77. Implement a function to create a new user with hashed password
78. Implement a function to update user password after login
79. Implement a function to fetch all inventory records with optional filters
80. Implement a function to search inventory by product, location, or status
81. Implement a function to adjust inventory quantity with audit logging
82. Implement a function to fetch all extracts with optional filters
83. Implement a function to create a new extract
84. Implement a function to fetch orders within an extract with filtering
85. Implement a function to generate labels for orders in an extract
86. Implement a function to fetch sync status for a Shopify store
87. Implement a function to trigger a manual sync with Shopify
88. Implement error handling for database connection failures
89. Implement error handling for database query failures
90. Implement error handling for non-existent record IDs
91. Implement error handling for invalid role or authorization failures
92. Implement error handling for invalid or expired JWT tokens
93. Implement error handling for Shopify API failures with retry logic
94. Implement error handling for Shopify API authentication failures
95. Implement password hashing and verification for user authentication
96. Implement JWT token generation and validation for session management
97. Implement Google OAuth 2.0 token exchange for user authentication
98. Implement RBAC middleware to enforce role-based access on API endpoints

## Server API Routes (ConnectRPC)
99. Set up the ConnectRPC service definition wrapping the axum router
100. Implement the GetInventory RPC handler that lists all inventory with optional filters and returns protobuf response
101. Implement the SearchInventory RPC handler that searches inventory by product, location, or status
102. Implement the AdjustInventory RPC handler that adjusts inventory quantity with reason and notes
103. Implement the CreateExtract RPC handler that creates a new extract from orders with a tag
104. Implement the GetExtracts RPC handler that lists all extracts with optional filtering
105. Implement the GetExtractOrders RPC handler that fetches orders within an extract
106. Implement the GenerateLabels RPC handler that generates labels for orders in an extract
107. Implement the GetSyncStatus RPC handler that returns the sync status for a Shopify store
108. Implement the TriggerSync RPC handler that triggers a manual sync with Shopify
109. Implement the Login RPC handler that authenticates with email/password or Google OAuth
110. Implement the Logout RPC handler that invalidates the session token
111. Implement the GetCurrentUser RPC handler that returns the current authenticated user
112. Implement the SetShopifyStoreConfig RPC handler that securely stores Shopify API credentials
113. Implement the GetShopifyStoreConfig RPC handler that returns store config (admin only)
114. Implement the DeleteShopifyStoreConfig RPC handler that removes a store configuration
115. Implement request deserialization from binary protobuf format to Rust structs
116. Implement response serialization from Rust structs to binary protobuf format
117. Add request validation to reject empty or invalid inputs in create and update operations
118. Add response error handling to return appropriate status codes for non-existent record IDs
119. Add response error handling to return appropriate status codes for authorization failures
120. Add response error handling to return appropriate status codes for database errors
121. Add connection pooling configuration for efficient database access
122. Add graceful shutdown handling for the server process
123. Configure ConnectRPC interceptor for logging and metrics
124. Implement Google OAuth 2.0 callback handler to exchange authorization code for tokens
125. Implement Google OAuth 2.0 scope and redirect URI configuration
126. Implement Shopify API credential encryption before database storage
127. Implement audit logging middleware that logs sensitive operations by role
128. Implement rate limiting middleware for authentication endpoints

## Shopify API Integration
129. Define the Shopify Admin API client structure with base URL and authentication headers
130. Implement a function to fetch all products from Shopify with pagination support
131. Implement a function to fetch all product variants from Shopify with pagination support
132. Implement a function to fetch inventory levels from Shopify with pagination support
133. Implement a function to fetch locations from Shopify
134. Implement a function to fetch orders from Shopify with tag and date filters
135. Implement a function to fetch fulfillment status for orders from Shopify
136. Implement retry logic with exponential backoff for failed Shopify API requests
137. Implement error handling for Shopify API rate limiting and throttling
138. Implement data validation before writing Shopify data to the database
139. Implement idempotent sync operations to prevent duplicate inventory records
140. Implement configurable sync intervals for automated synchronization
141. Implement a sync job scheduler using tokio for periodic Shopify data sync
142. Implement a manual sync trigger that runs immediately when requested
143. Implement tracking of sync failures and failed record counts
144. Implement Shopify API error response parsing and mapping to internal errors
145. Implement handling of Shopify API pagination cursors and page tokens
146. Implement Shopify product variant mapping to inventory records
147. Implement Shopify order mapping to extract records with tag filtering
148. Implement Shopify order fulfillment status mapping to extract order records

## Client Project Setup (Dart/Flutter)
149. Create a new Flutter project for the Shopify Inventory Management client application
150. Create the lib directory structure with models, services, and screens folders
151. Create the pubspec.yaml file with required dependencies including connectivity and connectivity_plus
152. Create the protobuf Dart model files for all inventory, extract, label, and user message types
153. Define a User model class with id, email, name, role, and organization_id fields in Dart
154. Define an Inventory model class with id, sku, product_title, variant_title, quantity, and available_quantity fields
155. Define an Extract model class with id, tag, order_count, created_at, and status fields
156. Define a Label model class with id, carrier, service_level, label_url, and status fields
157. Define a Session model class with access_token and user_id fields for authentication
158. Create a ConnectRPC client service class to manage all server communication via binary protobuf
159. Implement a function to fetch the list of inventory from the server using the ConnectRPC GetInventory RPC
160. Implement a function to search inventory on the server using the ConnectRPC SearchInventory RPC
161. Implement a function to adjust inventory on the server using the ConnectRPC AdjustInventory RPC
162. Implement a function to fetch the list of extracts from the server using the ConnectRPC GetExtracts RPC
163. Implement a function to create an extract on the server using the ConnectRPC CreateExtract RPC
164. Implement a function to fetch orders in an extract using the ConnectRPC GetExtractOrders RPC
165. Implement a function to generate labels using the ConnectRPC GenerateLabels RPC
166. Implement a function to authenticate with the server using the ConnectRPC Login RPC
167. Implement a function to check current user info using the ConnectRPC GetCurrentUser RPC
168. Implement a function to fetch sync status using the ConnectRPC GetSyncStatus RPC
169. Implement a function to trigger sync using the ConnectRPC TriggerSync RPC
170. Handle loading states in the client service layer
171. Handle error states in the client service layer
172. Create the main.dart entry point with the runApp function
173. Create the main app widget with MaterialApp configuration and theming
174. Create the GoogleSignIn configuration with client ID and redirect URI

## Client UI Implementation
175. Create a Home screen widget to display the main navigation
176. Create an Inventory screen widget to display inventory list
177. Create a ListView widget to display all inventory items in the list
178. Create an InventoryItem widget to display an individual inventory item with title, quantity, and location
179. Create an EmptyState widget for when no inventory items exist in the list
180. Create a SearchBar widget to filter inventory by product, location, or status
181. Create a dialog widget for adjusting inventory quantity with delta input and reason
182. Create an Extracts screen widget to display list of extracts
183. Create an ExtractItem widget to display an individual extract with tag, count, and date
184. Create a dialog widget for creating a new extract with tag, date range, and filter options
185. Create an Orders screen widget within an extract to display included orders
186. Create an OrderItem widget to display an individual order with fulfillment status
187. Create a Label screen widget to display generated labels for orders
188. Create a LabelPreview widget to preview a label before printing
189. Create a dialog widget for selecting carrier and service level for label generation
190. Create a Login screen widget with email and password input fields
191. Create a GoogleSignIn button widget for OAuth 2.0 login
192. Create a profile dropdown widget to switch between users and logout
193. Create a Settings screen widget for Shopify store configuration
194. Create a dialog widget for securely entering Shopify API credentials
195. Create a SyncStatus indicator widget to show last sync time and status
196. Style all widgets with Material Design theming and consistent colors
197. Implement haptic feedback or animations for inventory adjustments and label generation
198. Set up the Dart project structure with proper folder organization and imports
199. Create a navigation service to manage screen transitions based on user role
200. Create a role guard widget to restrict access based on user permissions

## Testing
201. Write unit tests for the server database functions to test inventory CRUD operations
202. Write unit tests for the server database functions to test extract operations
203. Write unit tests for the server database functions to test label generation
204. Write unit tests for the server ConnectRPC service handler logic
205. Write unit tests for the server request and response serialization
206. Write unit tests for the server RBAC middleware to test role enforcement
207. Write unit tests for the server Google OAuth 2.0 authentication flow
208. Write unit tests for the server password hashing and verification
209. Write unit tests for the server Shopify API client with mocked responses
210. Write unit tests for the server sync service with mocked Shopify responses
211. Write widget tests for the Flutter client UI components to test rendering
212. Write widget tests for the Flutter client login and authentication flow
213. Write integration tests for the full ConnectRPC API server to test all RPC methods
214. Write integration tests for the Flutter client to call the server and test UI
215. Write tests for error handling and edge cases in inventory adjustment
216. Write tests for Shopify API pagination and retry logic

## Deployment and DevOps
217. Create a Dockerfile for the Rust server application to containerize it
218. Create a docker-compose.yml file to orchestrate the server, Postgres, and client
219. Configure environment variables for database connection in the server
220. Configure environment variables for Google OAuth 2.0 client ID and secrets
221. Configure environment variables for Shopify API credentials
222. Configure environment variables for server port and JWT secret
223. Set up a CI/CD pipeline for automated testing and deployment
224. Set up database migrations in the deployment pipeline
225. Configure nginx or reverse proxy for production deployment
226. Set up monitoring and logging for the server application
227. Configure Google OAuth 2.0 consent screen and API credentials in Google Cloud Console
228. Set up environment-specific configuration for development, staging, and production
