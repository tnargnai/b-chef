#
# Cookbook Name:: b_provision_aws
# Recipe:: build-single
#
# Copyright 2016
#
# This recipe is designed to be used from chef-zero, passing the node name.
#
# chef-client -z -E <chef_env> -r 'recipe[b_provision_aws::build-single]' -N <node_name>

# Include helpers
::Chef::Recipe.send(:include, ProvHelpers)

build_aws_node(node.name)
