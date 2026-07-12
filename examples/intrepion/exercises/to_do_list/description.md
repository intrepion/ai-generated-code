# To Do List

## Description

Build a To Do List application that allows users to manage a collection of tasks. The application must support five core actions: viewing the list, creating a new item, editing an item's title, toggling the completion status of an item, and deleting an item.

Every action must return a clear message indicating whether the operation was successful or if an error occurred.

## Requirements

### Features

#### 1. View All Items

Return a list of all items in the To Do List. Each item should include its title and completion status.

**Success response:** A list of items, each containing a title and a boolean indicating whether it is complete.

**Error response:** An error message if the list cannot be retrieved.

### 2. Create a New Item

Add a new item to the To Do List. The user provides a title for the item.

**Success response:** A confirmation message that the item was created, including the item's unique identifier (e.g., an ID or index).

**Error response:** An error message if the item could not be created (e.g., the title is empty, the title exceeds a maximum length, or the system is unavailable).

### 3. Edit an Item's Title

Update the title of an existing item. The user provides the item identifier and a new title.

**Success response:** A confirmation message that the title was updated, including the item identifier and the new title.

**Error response:** An error message if the item could not be updated (e.g., the item does not exist, the title is empty, or the item exceeds a maximum length).

### 4. Toggle an Item's Completion Status

Toggle whether an item is marked as complete. An item should be able to transition between complete and incomplete states.

**Success response:** A confirmation message that the item's status was toggled, including the item identifier and its new completion status.

**Error response:** An error message if the item could not be toggled (e.g., the item does not exist).

### 5. Delete an Item

Remove an item from the To Do List by its identifier.

**Success response:** A confirmation message that the item was deleted, including the item identifier.

**Error response:** An error message if the item could not be deleted (e.g., the item does not exist).

## Constraints

- The application must be **language agnostic** — implementation language is not specified or required.
- The application must be **API architecture agnostic** — it may use REST, GraphQL, gRPC, or any other architecture.
- The application must be **storage agnostic** — it may use in-memory storage, relational databases, key-value stores, file-based storage, or any other persistence mechanism.

## Expected Behavior

- Creating an item with an empty or whitespace-only title should fail with an appropriate error message.
- Editing an item that does not exist should fail with an appropriate error message.
- Toggling an item that does not exist should fail with an appropriate error message.
- Deleting an item that does not exist should fail with an appropriate error message.
- Duplicate titles should be allowed (no uniqueness constraint on titles).
- The list should be empty initially until items are created.
- After deleting all items, viewing the list should return an empty list.
