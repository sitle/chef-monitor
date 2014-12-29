#
# Cookbook Name:: chef-monitor
# Recipe:: rabbitmq
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

node.set['sensu']['rabbitmq']['host'] = node['chef-monitor']['rabbitmq_host']
node.set['sensu']['rabbitmq']['port'] = node['chef-monitor']['rabbitmq_port']

include_recipe 'sensu::rabbitmq'

rabbitmq_user 'guest' do
  action :delete
end

rabbitmq_user node['chef-monitor']['rabbitmq_usercheck'] do
  password node['chef-monitor']['rabbitmq_usercheck_password']
  action :add
end

rabbitmq_user node['chef-monitor']['rabbitmq_usercheck'] do
  vhost '/'
  permissions '.* .* .*'
  action :set_permissions
end

rabbitmq_user node['chef-monitor']['rabbitmq_usercheck'] do
  tag 'monitoring'
  action :set_tags
end

rabbitmq_user node['chef-monitor']['rabbitmq_admin'] do
  password node['chef-monitor']['rabbitmq_admin_password']
  action :add
end

rabbitmq_user node['chef-monitor']['rabbitmq_admin'] do
  vhost '/'
  permissions '.* .* .*'
  action :set_permissions
end

rabbitmq_user node['chef-monitor']['rabbitmq_admin'] do
  tag 'administrator'
  action :set_tags
end
