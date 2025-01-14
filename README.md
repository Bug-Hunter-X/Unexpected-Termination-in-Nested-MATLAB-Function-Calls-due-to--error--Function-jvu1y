# Unexpected Termination in Nested MATLAB Function Calls

This repository demonstrates a subtle bug in MATLAB related to the use of the `error` function within nested function calls.  The `error` function, when called within a function, terminates the execution of that function. However, if this function is being called from another function, the calling function will continue execution only if it handles the error properly.  Improper error handling can lead to unexpected termination of the whole program, potentially making debugging difficult.

The `bug.m` file contains the buggy code, and `bugSolution.m` provides a more robust solution showing how to handle errors appropriately.

## How to reproduce the error
1.  Clone this repository.
2.  Open `bug.m` in MATLAB.
3.  Run the script.  You will see the error message.

## How to fix the error
Follow the solution provided in `bugSolution.m` by using try-catch blocks to handle potential errors, ensuring graceful termination and avoiding program crashes.