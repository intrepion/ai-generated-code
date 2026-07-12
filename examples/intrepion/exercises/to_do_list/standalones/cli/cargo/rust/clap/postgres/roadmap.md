1. Create a new Cargo project using cargo new to set up the basic project structure with a main.rs entry point.
2. Add the tokio-postgres crate to Cargo.toml as an async dependency for PostgreSQL database access.
3. Add the serde derive feature to Cargo.toml for serializing and deserializing Task structs.
4. Add the serde_json crate to Cargo.toml for formatting task output as structured JSON.
5. Add the clap crate to Cargo.toml as a dependency for declarative CLI subcommand parsing.
6. Add the tokio crate to Cargo.toml as an async runtime dependency for PostgreSQL connection management.
7. Define a Task struct with fields for id (integer), title (text), and completed (boolean) status.
8. Define a constant for the PostgreSQL connection string containing host, port, database, user, and password.
9. Implement an async function to establish a PostgreSQL connection using the configured connection string.
10. Implement an async function to create the tasks table with columns for id, title, and completed using raw SQL.
11. Implement an async function to execute a SELECT query that reads all tasks from PostgreSQL into a Vec of Task structs.
12. Implement an async function to execute an INSERT query that writes a Task struct to PostgreSQL with a generated id.
13. Implement an async function to execute an UPDATE query that modifies an existing task's title by its id.
14. Implement an async function to execute an UPDATE query that flips the completed status of a task by its id.
15. Implement an async function to execute a DELETE query that removes a task from PostgreSQL by its id.
16. Define clap subcommand enum with five variants: list, add, edit, toggle, and delete.
17. Define clap argument for the add operation to accept a task title from the command line.
18. Define clap argument for the edit operation to accept a task id and new title.
19. Define clap argument for the toggle operation to accept a task id.
20. Define clap argument for the delete operation to accept a task id.
21. Implement the list operation to read tasks from PostgreSQL, display each task in formatted output, and show an empty message.
22. Implement the add operation to create a new task in PostgreSQL with a generated id and incomplete status.
23. Implement the edit operation to update an existing task's title in PostgreSQL by its id.
24. Implement the toggle operation to flip an existing task's completed status in PostgreSQL by its id.
25. Implement the delete operation to remove an existing task from PostgreSQL by its id.
26. Validate that a task title is not empty or whitespace before inserting a new task.
27. Validate that the task id exists in PostgreSQL before attempting to edit the task.
28. Validate that the task id exists in PostgreSQL before attempting to toggle the task.
29. Validate that the task id exists in PostgreSQL before attempting to delete the task.
30. Display a success message after successfully creating a new task via the add operation.
31. Display a success message after successfully updating a task's title via the edit operation.
32. Display a success message after successfully toggling a task's status via the toggle operation.
33. Display a success message after successfully deleting a task via the delete operation.
34. Display an error message when a task is created with an empty or whitespace-only title.
35. Display an error message when attempting to edit a task with a non-existent id.
36. Display an error message when attempting to toggle a task with a non-existent id.
37. Display an error message when attempting to delete a task with a non-existent id.
38. Display an error message when attempting to delete a task from an empty list by referencing a non-existent id.
39. Implement connection pooling to efficiently manage PostgreSQL connections for async operations.
