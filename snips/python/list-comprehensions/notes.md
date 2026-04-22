# List Comprehensions

## What It Does

List comprehensions provide a compact way to generate new lists by applying an expression to each item of an iterable, with optional filtering.

## Syntax

```python
[expression for item in iterable if condition]
```

## When to Use

- Transforming every element in a list
- Filtering elements based on a condition
- Flattening nested lists
- Replacing simple `for` loops that build a list

## Tips

- Keep comprehensions short and readable — if it gets complex, use a regular loop.
- Nested comprehensions read left-to-right, just like nested `for` loops.
