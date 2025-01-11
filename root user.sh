#!/bin/bash
#!/bin/bash

# Get the root user's ID (UID) and assign it to the 'user' variable
user=$(id -u root)

# Print the root user ID
echo "The root user ID is: $user"
