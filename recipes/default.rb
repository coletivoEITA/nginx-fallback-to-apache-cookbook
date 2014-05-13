#
# Cookbook Name:: nginx-fallback-to-apache
# Recipe:: default
#
# Copyright 2014, Bráulio Bhavamitra <braulio@eita.org.br>
#
# GPLv3+
#

include_recipe 'apache2'
include_recipe 'nginx'

template "#{node['nginx']['dir']}/sites-enabled/default" do
  variables node['nginx-fallback-to-apache']

  action :create
  notifies :reload, 'service[nginx]'
end

