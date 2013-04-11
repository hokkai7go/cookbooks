#
# Cookbook Name:: git-svn
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#
package "git-svn" do
  case node[:platform]
  when "centos"
    include_recipe 'rpmforge'
  when "debian", "ubuntu"
  end
  action :install
end
