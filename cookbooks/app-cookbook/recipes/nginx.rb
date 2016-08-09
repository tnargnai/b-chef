#
# Cookbook Name:: app-cookbook
# Recipe:: nginx
#
# Copyright (c) 2016 Barclays, All Rights Reserved.

servers = get_go_app_hostnames

p servers

# values = Array[10, 20, 30, 40]
#
# p values
#
#
# environment = node.chef_environment
# role = 'base'
#
#
# ips = []
# search(:node, 'roles:nginx-server').each do |n|
#     ips << n['ipaddress']
# end
# # if node['roles'].include?'(goapp-server')
# #   ips |= [node['ipaddress']]
# # end
#
# p ips

# nodes = search(:node,"chef_environment:#{environment} AND roles:#{role}")
#
# hostname_list = []
# nodes.each do |node|
#   hostname_list << node['id']
# end
#
# p hostname_list
#



# # search for statsd host
# app_server = search(:node, "roles:#{role} AND chef_environment:#{environment}").sort.first
# puts app_server
# puts environment
puts "STOP STOP STOP STOP STOP"

# include_recipe 'b-nginx'
#
# app_servers = get_go_app_ips
#
# puts app_servers
#
# puts "STOP STOP STOP STOP STOP"
#
#
#
# # Set service
# service "nginx" do
#   supports :status => true, :restart => true, :reload => true
#   action [ :enable ]
# end
#
# # Site Admin
# template "/etc/nginx/conf.d/default.conf" do
#   source 'etc/nginx/conf.d/default.conf.erb'
#   mode 0644
#   owner 'root'
#   group 'root'
#   variables(
#       :app_servers => app_servers,
#       :backend_port => node['b-nginx']['site']['backend_port'],
#       :domain_name => node['b-nginx']['site']['domain']
#   )
#   notifies :restart, "service[nginx]"
# end
