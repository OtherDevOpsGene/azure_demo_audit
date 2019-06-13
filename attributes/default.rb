#
# Cookbook:: demo_audit
# Attributes:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

node.default['audit']['reporter'] = 'chef-server-automate'

case node['platform']
when 'windows'
  node.default['audit']['profiles'] = [
    {
      name: 'windows profile',
      compliance: 'ggotimer/cis-windows2012r2-level1-memberserver',
    },
  ]
when 'ubuntu'
  node.default['audit']['profiles'] = [
    {
      name: 'ubuntu',
      compliance: 'ggotimer/cis-ubuntu-16.04lts-level1-workstation',
    },
  ]
end
