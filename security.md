* SQL Injection: User input is directly concatenated into the SQL query string in `login_user`.
* Buffer Overflow: `strcpy` is used with a fixed-size 16-byte buffer in `process_user_input`, allowing arbitrary memory corruption.
* Broken Authentication: Passwords are handled as plaintext, making them vulnerable to exposure and replay attacks.
* Resource Leak: The C++ function `do_something_silly` allocates memory with `new` but fails to `delete`, causing a memory leak.
* Improper Error Handling: `cursor = conn.cursor` in Python is missing parentheses, which will crash execution.
* Inefficient Recursion: `calculate_fibonacci_bad` uses exponential time complexity, making it susceptible to Denial of Service (DoS) via resource exhaustion.
