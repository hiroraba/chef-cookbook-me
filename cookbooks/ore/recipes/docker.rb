
%w{software-properties-common}.each do |pkg|
  package pkg do
    action :install
  end
end

execute "add-apt-repository ppa:#{node["dot_cloud"]["repo"]}" do
    command "add-apt-repository ppa:#{node["dot_cloud"]["repo"]}"
end

execute "apt-get update" do
    user "root"
end

package "lxc-docker" do
  action :install
end
