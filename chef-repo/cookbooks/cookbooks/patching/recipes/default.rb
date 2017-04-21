#
# Cookbook Name:: patching
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

Chef::Log.info("Hello I am cookbook 0.1.0")

#Chef::Log.info(node['def']['greeting'])

#objitem = data_bag_item('my_new_ora_test_170417','oracleuser')

#Chef::Log.info("The Access Key is #{objitem['monitor_config']['secretKey']}")

=begin
admins = data_bag('my_new_ora_test_200417')
admins.each do |login|
  admin = data_bag_item('my_new_ora_test_200417', login)
 Chef::Log.info(admin.id)
  if node.name == admin.id
   Chef::Log.info("I am in #{node.name}")
  end
end
=end

