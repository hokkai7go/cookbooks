#
# Cookbook Name:: rvm
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
packages = %w{build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion pkg-config imagemagick libmagick++-dev libgdbm-dev libffi-dev}

packages.each do |package_name|
  package package_name do
    action :install
  end
end
