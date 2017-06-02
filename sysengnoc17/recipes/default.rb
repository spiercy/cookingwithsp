#
# Cookbook:: sysengnoc17
# Recipe:: default - config nginx
#
# Copyright:: 2017, The Authors, All Rights Reserved.

apt_update 'Best update for this task' do
  action :update
end

package 'nginx'

service 'nginx' do
  supports :status => true
  action [:enable, :start]
end

template '/usr/share/nginx/html/index.html' do
  source 'index.html.erb'
end
