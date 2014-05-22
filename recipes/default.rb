
include_recipe 'apache2'
include_recipe 'nginx'

template "#{node[:nginx][:dir]}/sites-enabled/default" do
  variables node[:nginx_fallback_to_apache]

  action :create
  notifies :reload, 'service[nginx]'
end

