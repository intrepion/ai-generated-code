# To Do List

## Overview

Build a To Do List application that allows users to manage tasks. The application must support viewing the list, creating new items, editing an item's title, toggling completion status, and deleting an item. Every action should return a clear success or error message to the user.

## Functional Requirements

### View List

- Display all items in the list, showing each item's title and completion status (e.g., completed or not).
- If the list is empty, display a message indicating there are no items.

### Create Item

- Allow the user to add a new item with a title.
- The new item should start as incomplete (not completed).
- Return a success message confirming the item was created.
- Return an error message if the title is empty or invalid.

### Edit Item Title

- Allow the user to change the title of an existing item by referencing the item (e.g., by its index or ID).
- Return a success message confirming the title was updated.
- Return an error message if the item does not exist or the new title is empty.

### Toggle Completion

- Allow the user to toggle the completion status of an existing item (mark as done or undo marking as done).
- Return a success message confirming the status was updated.
- Return an error message if the item does not exist.

### Delete Item

- Allow the user to remove an item from the list by referencing the item (e.g., by its index or ID).
- Return a success message confirming the item was deleted.
- Return an error message if the item does not exist.

## Non-Functional Requirements

- The application should handle edge cases (e.g., editing a non-existent item, toggling a non-existent item, deleting an empty list).
- The application should provide clear, informative messages on success and error conditions for every operation.
- The application should be language-agnostic, architecture-agnostic, and storage-agnostic — implement it in any language, with any API style, and using any storage mechanism.
