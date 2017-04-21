#
# Cookbook Name:: my_first_oracle_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#include_recipe "book"
#Chef::Recipe.send(:include,Oracle)

#mynewobj=Oracle::Weblogic.new(100)
#mynewobj=Weblogic.new(100)
#puts "My new level is #{mynewobj.awesome_level}"


template '/var/www/index.html'do
source 'index.erb'
recursive true
end

#remote_file "C:/chef/#{node['my_first_oracle_cookbook']['git_installer']}" do
#  source "https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/#{node['my_first_oracle_cookbook']['git_installer']}"
#  action :create
#  not_if { File.exists?("C:/chef/#{node['my_first_oracle_cookbook']['git_installer']}") }
#end


=begin
template '/home/vagrant/sudoers' do
  source 'sudoers.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    sudoers_groups: node['my_first_oracle_cookbook']['sudo']['groups'],
    sudoers_users: node['my_first_oracle_cookbook']['sudo']['users'],
	passwordless: true
  })
end
=end



=begin
execute 'git_install' do
  command 'C:/chef/Git-2.12.2.2-64-bit.exe /SILENT'
  not_if { File.exists?('C:\Program Files\Git\git-cmd.exe') }
end


package 'httpd' 

do
action :remove
end
=end
#Chef::Log.info("Hello Recipe I am in oracle")
#Chef::Log.debug("Hello Recipe I am in oracle in debug mode")

=begin

directory "#{node['my_first_oracle_cookbook']['dir']}" do
  owner "#{node['my_first_oracle_cookbook']['own']}"
  group "#{node['my_first_oracle_cookbook']['grp']}"
  mode "#{node['my_first_oracle_cookbook']['mode']}"
  recursive true
  action :create
end

cookbook_file "#{node['my_first_oracle_cookbook']['dir']}/index.html" do
  source 'index.html'
  owner "#{node['my_first_oracle_cookbook']['own']}"
  group "#{node['my_first_oracle_cookbook']['grp']}"
  mode "#{node['my_first_oracle_cookbook']['mode']}"
  action :create
end

=end