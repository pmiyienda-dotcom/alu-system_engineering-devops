# Web Stack Debugging #1

## Task: Nginx likes port 80

Nginx was not installed on the container at all, which is why it could not
listen on port 80. The fix installs nginx and starts the service.
