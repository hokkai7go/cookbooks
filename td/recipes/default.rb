#
# Cookbook Name:: td
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "td bootstrap" do
  user "vagrant"
  environment({"HOME" => "/home/vagrant"})
  # This command for ubuntu lucid
  command "curl -L http://toolbelt.treasure-data.com/sh/install-ubuntu-lucid.sh | sh"

  not_if do
    ::File.exists?("/etc/init.d/td-agent")
  end
end
