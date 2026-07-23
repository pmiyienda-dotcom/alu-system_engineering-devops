# Web Stack Debugging #0

## Task: Give me a page!

The container's Apache web server was installed but not running, causing
curl requests to the root to fail with "Connection reset by peer".

The fix was simply starting the Apache service:
service apache2 start

After running this, querying the root of the server correctly returns
"Hello Holberton".
