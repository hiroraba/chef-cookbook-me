#
# Cookbook Name:: ore
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


%w{zsh git vim}.each do |pkg|
  package pkg do
    action :install
  end
end

#file "/etc/sudoers.d/root_ssh_agent" do
#  mode 0440
#  owner 'root'
#  group 'root'
#  content "Defaults\tenv_keep += \"SSH_AUTH_SOCK\""
#end
