1. Create a new Cargo project using `cargo new` to set up the basic project structure with a main.rs entry point
2. Add the tokio-postgres crate to Cargo.toml as a dependency for PostgreSQL database access
3. Add the serde derive feature to Cargo.toml for serializing and deserializing structs
4. Add the serde_json crate to Cargo.toml for JSON output formatting of task data
5. Define a Task struct with fields for id, title, and completed status
6. Define a constant for the PostgreSQL connection string (host, port, database, user, password)
7. Implement a function to establish a PostgreSQL connection using the connection string
8. Implement a function to create the tasks table with columns for id, title, and completed using a raw SQL query
9. Implement a function to read all tasks from PostgreSQL into a Vec of Task structs
10. Implement a function to write all Task structs back to PostgreSQL
11. Implement CLI argument parsing to extract the operation and parameters from command-line arguments
12. Implement the list operation to read tasks from PostgreSQL and display each task with title and status, and show an empty message if the list is empty
13. Implement the add operation to create a new Task in PostgreSQL with a generated id and incomplete status
14. Implement the edit operation to update an existing task's title by id in PostgreSQL
15. Implement the toggle operation to flip an existing task's completed status by id in PostgreSQL
16. Implement the delete operation to remove an existing task from PostgreSQL by id
17. Validate that a task title is not empty before creating a new task
18. Validate that the task id exists before attempting to edit
19. Validate that the task id exists before attempting to toggle
20. Validate that the task id exists before attempting to delete
21. Display a success message after successfully creating a new task
22. Display a success message after successfully updating a task's title
23. Display a success message after successfully toggling a task's status
24. Display a success message after successfully deleting a task
25. Display an error message when a task is created with an empty title
26. Display an error message when attempting to edit a non-existent task
27. Display an error message when attempting to toggle a non-existent task
28. Display an error message when attempting to delete a non-existent task
29. Display an error message when attempting to delete from an empty list
30. Implement connection pooling to manage database connections efficiently
