# Coding Conventions

This document outlines the coding conventions and best practices for the React Shadcn Template project. Adhering to these guidelines ensures consistency, readability, and maintainability across the codebase.

## General Principles

- **Simplicity:** Write simple and clear code. Avoid unnecessary complexity.
- **Readability:** Code should be easy to read and understand.
- **Consistency:** Follow consistent naming conventions and coding styles.
- **Maintainability:** Structure code to facilitate easy maintenance and updates.
- **Modularity:** Break down code into reusable and independent modules.

## React and TypeScript

- **Functional Components:** Use functional components with React Hooks.
- **Type Annotations:** Prefer explicit type annotations for variables, function parameters, and return types.
- **Props Interface:** Define a separate interface for component props.

  ```typescript:app/components/Button.tsx
  interface ButtonProps {
    onClick: () => void;
    children: React.ReactNode;
  }

  const Button: React.FC<ButtonProps> = ({ onClick, children }) => {
    // component logic
  };
  ```

## Naming Conventions

- **Files and Folders:**
  - Use kebab-case for file and folder names (e.g., `user-profile.tsx`).
  - Component filenames should match the component name (e.g., `Button.tsx` for `Button` component).

- **Components:**
  - Use PascalCase for React component names (e.g., `UserProfile`).
  - Function and variable names should use camelCase (e.g., `handleClick`).

- **Hooks:**
  - Custom hooks should start with `use` (e.g., `useFetch`).

## Shadcn UI Components available

Import the components from `@/components/ui/...`

├── src
│   │   └── ui
│   │       ├── accordion.tsx
│   │       ├── alert-dialog.tsx
│   │       ├── aspect-ratio.tsx
│   │       ├── avatar.tsx
│   │       ├── badge.tsx
│   │       ├── breadcrumb.tsx
│   │       ├── button.tsx
│   │       ├── calendar.tsx
│   │       ├── card.tsx
│   │       ├── chart.tsx
│   │       ├── checkbox.tsx
│   │       ├── command.tsx
│   │       ├── context-menu.tsx
│   │       ├── dialog.tsx
│   │       ├── drawer.tsx
│   │       ├── dropdown-menu.tsx
│   │       ├── form.tsx
│   │       ├── input-otp.tsx
│   │       ├── input.tsx
│   │       ├── label.tsx
│   │       ├── menubar.tsx
│   │       ├── navigation-menu.tsx
│   │       ├── pagination.tsx
│   │       ├── progress.tsx
│   │       ├── radio-group.tsx
│   │       ├── resizable.tsx
│   │       ├── select.tsx
│   │       ├── separator.tsx
│   │       ├── sheet.tsx
│   │       ├── skeleton.tsx
│   │       ├── slider.tsx
│   │       ├── sonner.tsx
│   │       ├── table.tsx
│   │       ├── tabs.tsx
│   │       ├── textarea.tsx
│   │       ├── toast.tsx
│   │       ├── toaster.tsx
│   │       ├── toggle-group.tsx
│   │       ├── toggle.tsx
│   │       └── tooltip.tsx


### Avoid Deep Nesting

- Limit folder nesting to a maximum of 2-3 levels.
- Flat structures are easier to navigate and understand.


## Managing Cognitive Load

Address common challenges engineers face to enhance productivity and code quality.


### Simplify Code Complexity

- **Single Responsibility Principle (SRP):**
  - Each module, class, or function should have one responsibility.
  - Encourages modular and testable code.

- **Limit Function Length:**
  - Keep functions concise (ideally under 50 lines).
  - Extract reusable code into helper functions.

- **Clear Control Flow:**
  - Use early returns or guard clauses to reduce nesting.
  - Simplify complex conditional logic.


### Enhance Readability

- **Consistent Coding Style:**
  - Adhere to established code styles.
  - Use linters and formatters (e.g., ESLint, Prettier).

- **Meaningful Comments:**
  - Explain the purpose and reasoning behind code.
  - Update comments when code changes.

- **Avoid Magic Numbers and Strings:**
  - Use constants or enums for fixed values.
  - Improves clarity and ease of updates.


### Improve Documentation

- **Inline Documentation:**
  - Use JSDoc or TypeScript interfaces to document code.
  - Provide details on parameters, return types, and side effects.

  ```typescript:app/utils/dateUtils.ts
  /**
   * Formats a date object into a readable string.
   * @param date - The date object to format.
   * @returns A formatted date string.
   */
  export const formatDate = (date: Date): string => {
    // implementation
  };
  ```

- **High-Level Documentation:**
  - Maintain architectural overviews in the `docs/` directory.
  - Document major components and workflows.


## React and TypeScript

- **Functional Components:** Use functional components with React Hooks.
- **Type Annotations:** Prefer explicit type annotations for variables, function parameters, and return types.
- **Props Interface:** Define a separate interface for component props.

  ```typescript
  interface ButtonProps {
    onClick: () => void;
    children: React.ReactNode;
  }

  const Button: React.FC<ButtonProps> = ({ onClick, children }) => {
    // component logic
  };

## The Zen of Modern Web Development with Vite, React, TypeScript, Tailwind, and Shadcn UI

Fast is better than slow.
Declarative code tells a clearer story.
Types enhance confidence and clarity.
Utility-first styling avoids bloat.
Reusable components are time savers.
Simplicity is the ultimate sophistication.
Focus on the user, not the implementation.
Let tools handle the mundane; you handle the unique.
Consistency breeds maintainability.
Readability counts.
Avoid premature optimization.
Conventions reduce cognitive load.
Design systems streamline creativity.
Flat is better than nested.
Catch errors early; fix them swiftly.
Instant feedback fuels progress.
There should be one—and preferably only one—source of truth.
Favor composition over complexity.
Tests today prevent bugs tomorrow.
Happy developers craft better solutions.
