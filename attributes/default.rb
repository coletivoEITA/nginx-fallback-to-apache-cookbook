#
# Cookbook Name:: nginx-fallback-to-apache
# Recipe:: default
#
# Copyright 2014, Bráulio Bhavamitra <braulio@eita.org.br>
#
# GPLv3+
#

default['nginx-fallback-to-apace']['nginx_port'] = node['nginx']['listen_ports'].first rescue 80
default['nginx-fallback-to-apace']['apache_port'] = node['apache']['listen_ports'].first rescue 8080
