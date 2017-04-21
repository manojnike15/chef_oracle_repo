#
# Cookbook Name:: parent
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#include_recipe 'child::default'



template '/etc/sudoers' do
  source 'sudoers.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    sudoers_groups: node['parent']['sudo']['groups'],
    sudoers_users: node['parent']['sudo']['users'],
	passwordless: true
  })
end