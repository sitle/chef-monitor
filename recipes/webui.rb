#
# Cookbook Name:: chef-monitor
# Recipe:: default
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

include_recipe 'uchiwa::default'
include_recipe 'apache2::default'
include_recipe 'apache2::mod_authz_core'
include_recipe 'apache2::mod_proxy'
include_recipe 'apache2::mod_xml2enc'
include_recipe 'apache2::mod_proxy_http'
include_recipe 'apache2::mod_proxy_html'

web_app 'uchiwa' do
  template 'uchiwa.erb'
  server_name 'monitoring'
  cookbook 'chef-monitor'
end
