#
# Cookbook Name:: heroku-toolbelt
# Recipe:: default
#
# Copyright 2013, hokkai7go
#
# All rights reserved - Do Not Redistribute
#

case node['platform']

when "ubuntu", "debian"
  bash 'install heroku-toolbelt' do
    not_if { File.exists?('/etc/apt/sources.list.d/heroku.list') }
    code <<-EOC
      wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
    EOC
  end
end
