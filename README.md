# chef-monitor

This cookbook install and configure the services monitoring and is based on Sensu monitoring tools.

## Supported Platforms

* Debian
* Ubuntu

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['chef-monitor']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### chef-monitor::default

Include `chef-monitor` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[chef-monitor::default]"
  ]
}
```

### chef-monitor::rabbitmq

Include `chef-rabbitmq` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[chef-monitor::rabbitmq]"
  ]
}
```

### chef-monitor::redis

Include `chef-redis` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[chef-redis::default]"
  ]
}
```

### chef-monitor::server

Include `chef-server` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[chef-monitor::server]"
  ]
}
```

### chef-monitor::webui

Include `chef-webui` in your node's `run_list` to install Uchiwa web interface :

```json
{
  "run_list": [
    "recipe[chef-monitor::webui]"
  ]
}
```

## License and Authors

Author:: Leonard TAVAE (<leonard.tavae@informatique.gov.pf>)
