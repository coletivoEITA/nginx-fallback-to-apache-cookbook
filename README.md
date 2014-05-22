nginx\_fallback\_to\_apache Cookbook
========================
Create a default site in Nginx that matches unhandled hosts and proxy them to Apache 

Attributes
----------
#### nginx\_fallback\_to\_apache::default
<table>
  <tr>
    <th>Attribute</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>node[:nginx_fallback_to_apache][:nginx_port]</tt></td>
    <td>The main port Nginx is listening</td>
    <td><tt>node[:nginx][:listen_ports].first</tt></td>
  </tr>
  <tr>
    <td><tt>node[:nginx_fallback_to_apache][:apache_port]</tt></td>
    <td>The main port Apache is listening</td>
    <td><tt>node[:apache][:listen_ports].first</tt></td>
  </tr>
</table>

Usage
-----
#### nginx\_fallback\_to\_apache::default
Just include `nginx\_fallback\_to\_apache` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[nginx_fallback_to_apache]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

After 3 consistent patches you become a commiter :)
