# Uncommon MATLAB Bug: Logical Indexing with Empty Arrays
This repository demonstrates an uncommon MATLAB bug related to logical indexing when dealing with potentially empty arrays within conditional statements.  The bug arises when performing element-wise logical operations where one or more operands might be empty, leading to unexpected errors.

## Bug Description
The original `myFunction` attempts to use logical indexing directly in a conditional context. If the input array is such that the result of `(input > 5) & (input < 10)` is empty, the indexing operation `input(logicalIndex)` fails.

## Solution
The solution involves carefully handling potential empty arrays within the logical indexing process. The correct implementation checks for empty input and handles it separately.  The corrected logical indexing ensures that the operation is performed only when the resulting logical index is not empty.

## How to Reproduce
1. Clone this repository.
2. Open the `bug.m` file in MATLAB.
3. Run the function with an empty array as input: `result = myFunction([]);`  This will result in an error.
4. Open the `bugSolution.m` file in MATLAB.
5. Run the function with an empty array as input: `result = bugSolution([]);`  This will handle the empty input correctly.
6. Test the function with various inputs to observe the corrected behavior.