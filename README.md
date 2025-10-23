# README for Username Validation Script

## Author Information
- **Name:** David Gonzalez
- **Course:** CPSC-298-01  Introduction to *Nix
- **Project:** Username Validation using Jenkins
- **Date:** 10-13-2025

## Program Description
This script validates usernames. It solves the problem of users inputing the wrong username format. The script reads usernames from user input or a file and uses regular expressions to verify each one.

## Username Requirements
This script validates usernames according to the following rules:
- Must start with a lowercase letter
- Can only contain lowercase letters, digits, and underscores
- Must be between 3 and 12 characters in length (inclusive)

## Usage
To run the script interactively:
```bash
./username.sh
```

To test with the provided input file:
```bash
./username.sh < username-input
```

## How the Script Works
[Explain in 3-5 sentences how your script validates usernames. Include information about:]
- The use of the `while` loop
- The `grep` command with extended regular expressions
- The meaning of the `-E` and `-v` flags
- The redirect `> /dev/null 2>&1`

The script uses a while true loop to prompt the user for a username until a valid one is entered. It validates each input using the grep command with the -E flag for extended regular expressions. It also checks against the pattern ^[a-z][a-z0-9_]{2,11}$. The redirect > /dev/null 2>&1 silences grep's output so only the script's custom validation messages are displayed to the user.


## Regular Expression Pattern
The validation uses the following regular expression pattern:
```
^[a-z][a-z0-9_]{2,11}$
```
This pattern ensures that:
- The username starts with a lowercase letter `[a-z]`
- The following characters are lowercase letters, digits, or underscores `[a-z0-9_]`
- The total length is between 3 and 12 characters

## Testing Results
[Describe your testing process and results. Include:]
- Example valid usernames you tested (at least two)
dgonzalez, test123
- Example invalid usernames and why they fail (at least two)
Test123, test-123
- How you used the username-input file to test
./username.sh < username-input

## Challenges and Solutions
[Optional: Describe any challenges you encountered while creating this script and how you solved them. This could include debugging issues, understanding regular expressions, or Git workflow problems.]
- I didn't encounter any challenges.

## Resources
[List any resources you used (class slides, ChatGPT, etc.). Please refer to the course syllabus for more details on citations.]
- class slides
## License
This project is part of coursework for Chapman University and is intended for educational purposes.
