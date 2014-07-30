default[:nginx][:default_site_enabled] = false

default[:nginx_fallback_to_apache][:nginx_port] = node[:nginx][:listen_ports].first rescue 80
default[:nginx_fallback_to_apache][:apache_port] = node[:apache][:listen_ports].first rescue 8080

default[:nginx_fallback_to_apache][:ssl] = false

default[:nginx_fallback_to_apache][:server_config] = {}
default[:nginx_fallback_to_apache][:location_config] = {}

