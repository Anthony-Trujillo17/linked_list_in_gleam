# linked_list

[![Package Version](https://img.shields.io/hexpm/v/linked_list)](https://hex.pm/packages/linked_list)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/linked_list/)

```sh
gleam add linked_list@1
```
```gleam
import linked_list

pub fn main() {
  // TODO: An example of the project in use
}
```

Further documentation can be found at <https://hexdocs.pm/linked_list>.

## Development

```sh
gleam run   # Run the project
gleam test  # Run the tests
```


# Single Linked List (SLL) Implementation in Gleam
This repository contains the implementation of a Single Linked List (SLL) in Gleam.
The SLL is implemented using an Algebraic Data Type (ADT), which allows for an efficient, flexible, 
and functional approach to working with linked lists.

# Operations

The following operations are provided:

- new: Creates an empty list.
- wrap: Creates a list with a single element.
- is_empty: Checks if the list is empty.
- append: Adds an element at the end of the list.
- prepend: Adds an element at the beginning of the list.
- pop: Removes the first element of the list.
- pop_n: Removes the first N elements from the list. If N is negative, it removes the last N elements.
- reverse: Reverses the entire list.
- map: Applies a function to each element of the list, transforming it into a new list.
- each: Applies a function to each element of the list, ignoring the result (fire and forget).
- get: Returns the nth element of the list, wrapped in an option type (Some or None).
- concat: Concatenates two lists.
