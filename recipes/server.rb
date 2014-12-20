#
# Cookbook Name:: chef-monitor
# Recipe:: server
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

include_recipe 'sensu::server_service'
include_recipe 'sensu::api_service'

sensu_check 'redis_process' do
  command '/usr/local/bin/check-redis-info.rb'
  handlers ['default']
  subscribers ['redis']
  interval 30
  additional(notification: 'Redis is not running', occurrences: 5)
end

sensu_check 'redis_memory' do
  command '/usr/local/bin/check-redis-memory.rb -h localhost -w 1024 -c 2048'
  handlers ['default']
  subscribers ['redis']
  interval 30
end

sensu_check 'ntp_time' do
  command '/usr/lib/nagios/plugins/check_ntp_time -H localhost -4 -w 5 -c 10'
  handlers ['default']
  subscribers ['all']
  interval 30
end

sensu_check 'apt_update' do
  command '/usr/lib/nagios/plugins/check_apt'
  handlers ['default']
  subscribers ['all']
  interval 300
end

sensu_check 'user_logged' do
  command '/usr/lib/nagios/plugins/check_users -w 0 -c 1'
  handlers ['default']
  subscribers ['all']
  interval 10
end

sensu_check 'root_disk' do
  command '/usr/lib/nagios/plugins/check_disk -w 10 -c 5 -p /'
  handlers ['default']
  subscribers ['all']
  interval 10
end
