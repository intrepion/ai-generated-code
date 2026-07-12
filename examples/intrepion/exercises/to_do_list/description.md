# To Do List Project

## Overview

Create a To Do List application that allows users to manage their tasks with the following core functionality:

- View all To Do Items
- Create new To Do Items
- Edit To Do Item titles
- Toggle completion status of To Do Items
- Delete To Do Items

## Required Features

Each action must include a confirmation step:

1. **Viewing Items**
   - Display either list of all To Do Items or empty message or error message
   - Each item should show: title, completion status, and unique identifier

2. **Creating Items**
   - Accept input for new task title
   - Default completion status should be false (not completed)
   - Display either newly created task or error message

3. **Editing Items**
   - Modify the title of an existing To Do Item
   - Display either newly updated task or error message

4. **Toggling Completion**
   - Toggle completion status (true/false) for existing To Do Items
   - Display either newly updated task or error message

5. **Deleting Items**
   - Remove To Do Items from the system
   - Display either successful deletion or error message

## Requirements

- Must be programming language agnostic
- Must be API architecture agnostic
- Must be storage strategy agnostic
- Must provide clear separation of concerns
- Must handle errors gracefully
- Must provide consistent data representation

## Non-functional Requirements

- User experience should be intuitive
- Actions should be idempotent where possible
- All operations should be traceable
- Support for batch operations where applicable

## Design Considerations

- Consider scalability and performance
- Ensure data integrity
- Plan for future extensibility
- Think about security implications
- Plan for data persistence without assuming a particular storage system

## Expected Output

The system should provide a consistent interface for managing To Do Items regardless of implementation language, API framework, or storage backend.
