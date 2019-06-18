#
# Cookbook:: demo_audit
# Attributes:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

node.default['audit']['reporter'] = 'chef-server-automate'
node.default['audit']['fetcher'] = 'chef-server'

case node['platform']
when 'centos'
  node.default['audit']['profiles'].push(
    'name': 'centos level1',
    'compliance': 'ggotimer/cis-centos7-level1'
  )
  node.default['audit']['profiles'].push(
    'name': 'centos level2',
    'compliance': 'ggotimer/cis-centos7-level2'
  )
when 'windows'
  node.default['audit']['profiles'].push(
    'name': 'windows level1',
    'compliance': 'ggotimer/cis-windows2012r2-level1-memberserver'
  )
  node.default['audit']['profiles'].push(
    'name': 'windows level2',
    'compliance': 'ggotimer/cis-windows2012r2-level2-memberserver'
  )
end

node.default['audit']['interval'] = {
  'enabled': false
}
