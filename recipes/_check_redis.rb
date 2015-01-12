#
# Cookbook Name:: chef-monitor
# Recipe:: _check_redis
#
# Copyright (C) 2014 Leonard TAVAE
#
# Licensed under the Apache License, Version 2.0 (the 'License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an 'AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'chef-monitor::default'

sensu_client node.name do
  address node.ipaddress
  subscriptions node.roles + ['all']
end

%w(redis).each do |pkg|
  gem_package pkg do
    action :install
  end
end

remote_file '/etc/sensu/plugins/check-redis-info.rb' do
  owner 'root'
  group 'root'
  mode '0755'
  source 'https://raw.githubusercontent.com/sensu/sensu-community-plugins/master/plugins/redis/check-redis-info.rb'
  action :create_if_missing
end

remote_file '/etc/sensu/plugins//check-redis-memory.rb' do
  owner 'root'
  group 'root'
  mode '0755'
  source 'https://raw.githubusercontent.com/sensu/sensu-community-plugins/master/plugins/redis/check-redis-memory.rb'
  action :create_if_missing
end

include_recipe 'sensu::client_service'
