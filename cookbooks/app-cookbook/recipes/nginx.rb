#
# Cookbook Name:: app-cookbook
# Recipe:: nginx
#
# Copyright (c) 2016 Barclays, All Rights Reserved.

app_servers = get_go_app_hostnames

include_recipe 'b-nginx'

# Set service
service "nginx" do
  supports :status => true, :restart => true, :reload => true
  action [ :enable ]
end

# Site Admin
template "/etc/nginx/conf.d/default.conf" do
  source 'etc/nginx/conf.d/default.conf.erb'
  mode 0644
  owner 'root'
  group 'root'
  variables(
      :app_servers => app_servers,
      :backend_port => node['b-nginx']['site']['backend_port'],
      :domain_name => node['b-nginx']['site']['domain']
  )
  notifies :restart, "service[nginx]"
end
