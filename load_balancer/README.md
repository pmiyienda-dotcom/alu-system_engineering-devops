# Load Balancer

This project doubles our web server infrastructure by configuring web-02 identically to web-01, and prepares for load balancing across both servers using HAProxy or Nginx.

## Tasks
- 0-custom_http_response_header: Configures nginx with a custom X-Served-By header identifying which server responded.
