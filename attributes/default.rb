
## Configuration de rabbitmq
#
default['chef-monitor']['rabbitmq_host'] = 'localhost'
default['chef-monitor']['rabbitmq_port'] = '5671'
default['chef-monitor']['rabbitmq_admin'] = 'admin'
default['chef-monitor']['rabbitmq_admin_password'] = 'password'
default['chef-monitor']['rabbitmq_usercheck'] = 'monitor'
default['chef-monitor']['rabbitmq_usercheck_password'] = 'password'
default['chef-monitor']['rabbitmq_role'] = 'monitor-queue'

## Configuration de redis
#
default['chef-monitor']['redis_host'] = 'localhost'
default['chef-monitor']['redis_port'] = '6379'
default['chef-monitor']['redis_role'] = 'monitor-queue'

## Configuration uchiwa
#
default['chef-monitor']['webui_role'] = 'monitor-webui'
default['chef-monitor']['webui_domain'] = 'monitoring.dev'
