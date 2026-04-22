# List Comprehensions in Python
# A concise way to create lists from existing iterables.

# Basic: squares of numbers 0-9
squares = [x ** 2 for x in range(10)]
print("Squares:", squares)

# Filtered: even numbers only
evens = [x for x in range(20) if x % 2 == 0]
print("Evens:", evens)

# Nested: flatten a 2D list
matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
flat = [num for row in matrix for num in row]
print("Flattened:", flat)

# With transformation: uppercase words
words = ["hello", "world", "python"]
upper_words = [w.upper() for w in words]
print("Uppercase:", upper_words)
