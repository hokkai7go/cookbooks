#
# Cookbook Name:: timezone
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
if ['debian','ubuntu'].member? node[:platform]
  package "tzdata"

  template "/etc/timezone" do
    source "timezone.conf.erb"
    owner 'root'
    group 'root'
    mode 0644
    notifies :run, 'bash[dpkg-reconfigure tzdata]'
  end

  bash 'dpkg-reconfigure tzdata' do
    user 'root'
    code "/usr/sbin/dpkg-reconfigure -f noninteractive tzdata"
    action :nothing
  end

end
