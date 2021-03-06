#
# Cookbook Name:: app_nginx
# Recipe:: default
#
# Copyright (c) 2016 Barclays, All Rights Reserved.

include_recipe 'b-nginx'

# app_servers = node['b-nginx']['site']['app_servers']

# Set service
service 'nginx' do
  supports status: 'true', restart: 'true', reload: 'true'
  action [:enable]
end

# Site Admin
template "/etc/nginx/sites-enabled/#{node['b-nginx']['site']['domain']}" do
  source 'etc/nginx/sites-available/web-conf.erb'
  mode 0644
  owner 'root'
  group 'root'
  variables(
    # :app_servers => node['b-nginx']['site']['app_servers'],
    app_servers: node['b-nginx']['site']['app_servers'],
    backend_port: node['b-nginx']['site']['backend_port'],
    domain_name: node['b-nginx']['site']['domain']
  )
  notifies :restart, 'service[nginx]'
end
