
## Configuration de rabbitmq
#
default['chef-monitor']['rabbitmq_host'] = 'localhost'
default['chef-monitor']['rabbitmq_port'] = '5671'
default['chef-monitor']['rabbitmq_admin'] = 'admin'
default['chef-monitor']['rabbitmq_admin_password'] = 'password'
default['chef-monitor']['rabbitmq_usercheck'] = 'monitor'
default['chef-monitor']['rabbitmq_usercheck_password'] = 'password'

## Configuration de redis
#
default['chef-monitor']['redis_host'] = 'localhost'
default['chef-monitor']['redis_port'] = '6379'

