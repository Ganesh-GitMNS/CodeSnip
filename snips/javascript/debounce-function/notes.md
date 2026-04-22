# Debounce Function

## What It Does

Prevents a function from being called too frequently by waiting until calls have stopped for a specified duration before executing.

## Common Use Cases

- **Search inputs** — Wait until the user stops typing before firing an API call
- **Window resize** — Avoid running expensive layout calculations on every pixel change
- **Button clicks** — Prevent accidental double-submissions

## How It Works

1. Each call resets an internal timer
2. The wrapped function only executes once the timer expires without being reset
3. Uses `apply` to preserve the original `this` context and arguments

## Tips

- Choose a wait time that balances responsiveness and performance (200–500ms is common)
- For cases where you need the function to fire immediately on the *first* call, consider a "leading edge" debounce variant
