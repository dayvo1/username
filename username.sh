#!/bin/bash
# username.sh - validate usernames

# rules
echo "Username Requirements:"
echo "* Must start with a lowercase letter"
echo "* Can only contain lowercase letters, digits, and underscores"
echo "* Must be between 3 and 12 characters in length"
echo ""


while true; do
  echo -n "Please enter a username: "
  read -r USERNAME
  
  if echo "$USERNAME" | grep -Eq "^[a-z][a-z0-9_]{2,11}$" > /dev/null 2>&1; then
    echo "Thank you! '$USERNAME' is a valid username."
    exit 0
  else
    echo "Invalid username. Please try again."
    echo ""
  fi
done