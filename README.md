# chef-monitor-cookbook

TODO: Enter the cookbook description here.

## Supported Platforms

TODO: List your supported platforms.

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

## License and Authors

Author:: Leonard TAVAE (<leonard.tavae@informatique.gov.pf>)
