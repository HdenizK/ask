### Engineering Action Plan

| Issue | Solution | Priority | Effort |
| :--- | :--- | :--- | :--- |
| **SQL Injection** | Parameterize all dynamic queries | High | Medium |
| **Buffer Overflows** | Replace `strcpy` with `strncpy` or `strlcpy` | High | Medium |
| **Memory Leaks** | Implement RAII/Smart Pointers | High | Large |
| **Syntax/Logic Errors** | Refactor/debug Python control flow | High | Small |
| **Performance (Fib)** | Memoization or iterative approach | Medium | Small |
| **Auth Vulnerabilities** | Implement bcrypt/Argon2 hashing & salting | High | Medium |
| **Log Bottlenecks** | Implement buffered I/O streams | Medium | Small |
