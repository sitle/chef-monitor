#
# Cookbook Name:: chef-monitor
# Recipe:: _handler_hipchat
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

%w(hipchat timeout).each do |pkg|
  gem_package pkg do
    action :install
  end
end

remote_file '/etc/sensu/handlers/hipchat.rb' do
  owner 'root'
  group 'root'
  mode '0755'
  source 'https://raw.githubusercontent.com/sensu/sensu-community-plugins/master/handlers/notification/hipchat.rb'
  action :create_if_missing
end

remote_file '/etc/sensu/handlers/hipchat.json' do
  owner 'root'
  group 'root'
  mode '0755'
  source 'https://raw.githubusercontent.com/sensu/sensu-community-plugins/master/handlers/notification/hipchat.json'
  action :create_if_missing
end
