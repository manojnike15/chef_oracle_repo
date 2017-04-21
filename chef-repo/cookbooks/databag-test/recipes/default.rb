#
# Cookbook Name:: databag-test
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#secret = Chef::EncryptedDataBagItem.load_secret(Chef::Config[:encrypted_data_bag_secret])
objitem= Chef::EncryptedDataBagItem.load("my_data_bag", "manoj")


Chef::Log.info(objitem['shell'])
