#
# Cookbook Name:: child
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#Chef::Log.info("I am in child recipe")
#Chef::Log.info("This is my unix node :#{node['platform']}")

mynewobj=OracleCorp::Weblogic.new(100)
Chef::Log.info("My new level is #{mynewobj.awesome_level}")

=begin
template '/sudoers' do
  source 'sudoers.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    sudoers_groups: node['child']['sudo']['groups'],
    sudoers_users: node['child']['sudo']['users'],
	passwordless: true
  })
end
=end