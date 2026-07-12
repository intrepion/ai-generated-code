1. Create a new Cargo project for the to-do list application
2. Add the rusqlite crate to Cargo.toml as a dependency for SQLite database access
3. Add the serde derive feature to Cargo.toml for serializing and deserializing structs
4. Define a Task struct with fields for id, title, and completed status
5. Define a constant for the SQLite database file path that will store the to-do list
6. Implement a function to open or create the SQLite database connection
7. Implement a function to create the tasks table with columns for id, title, and completed
8. Implement a function to read and parse all tasks from the SQLite database into a Vec of Task structs
9. Implement a function to write all Task structs back to the SQLite database
10. Implement CLI argument parsing to extract the operation and parameters from command-line arguments
11. Implement the list operation to read tasks from SQLite, display each task with title and status, and show an empty message if the list is empty
12. Implement the add operation to create a new Task in SQLite with a generated id and incomplete status
13. Implement the edit operation to update an existing task's title by id in SQLite
14. Implement the toggle operation to flip an existing task's completed status by id in SQLite
15. Implement the delete operation to remove an existing task from SQLite by id
16. Validate that a task title is not empty before creating a new task
17. Validate that the task id exists before attempting to edit
18. Validate that the task id exists before attempting to toggle
19. Validate that the task id exists before attempting to delete
20. Display a success message after successfully creating a new task
21. Display a success message after successfully updating a task's title
22. Display a success message after successfully toggling a task's status
23. Display a success message after successfully deleting a task
24. Display an error message when a task is created with an empty title
25. Display an error message when attempting to edit a non-existent task
26. Display an error message when attempting to toggle a non-existent task
27. Display an error message when attempting to delete a non-existent task
28. Display an error message when attempting to delete from an empty list
