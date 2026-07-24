# Web Stack Debugging #2

## Task: Run software as another user

A Bash script that runs the `whoami` command as a specified user, using
`sudo -u`, without permanently switching the current session's user.

## Task: Run Nginx as nginx

Nginx was not installed. The fix installs nginx, creates a dedicated
`nginx` system user, configures nginx.conf and the default site to use
that user and listen on port 8080, fixes ownership of log/lib
directories and the pid file location, then starts nginx directly as
the `nginx` user so both the master and worker processes run
unprivileged.
