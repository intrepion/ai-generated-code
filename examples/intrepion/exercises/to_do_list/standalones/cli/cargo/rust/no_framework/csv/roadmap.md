1. Create a new Cargo project for the to-do list application
2. Add the csv crate to Cargo.toml as a dependency for reading and writing CSV files
3. Define a Task struct with fields for id, title, and completed status
4. Define a constant for the CSV file path that will store the to-do list
5. Define a constant for the CSV header row containing the column names (id, title, completed)
6. Implement a function to read and parse the CSV file into a Vec of Task structs
7. Implement a function to write a Vec of Task structs back to the CSV file
8. Implement CLI argument parsing to extract the operation and parameters from command-line arguments
9. Implement the list operation to read the CSV, display each task with title and status, and show an empty message if the list is empty
10. Implement the add operation to append a new Task row to the CSV with a generated id and incomplete status
11. Implement the edit operation to update an existing task's title by index
12. Implement the toggle operation to flip an existing task's completed status by index
13. Implement the delete operation to remove an existing task from the CSV by index
14. Validate that a task title is not empty before creating a new task
15. Validate that the task index exists before attempting to edit
16. Validate that the task index exists before attempting to toggle
17. Validate that the task index exists before attempting to delete
18. Display a success message after successfully creating a new task
19. Display a success message after successfully updating a task's title
20. Display a success message after successfully toggling a task's status
21. Display a success message after successfully deleting a task
22. Display an error message when a task is created with an empty title
23. Display an error message when attempting to edit a non-existent task
24. Display an error message when attempting to toggle a non-existent task
25. Display an error message when attempting to delete a non-existent task
26. Display an error message when attempting to delete from an empty list
