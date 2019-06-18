#
# Cookbook:: demo_audit
# Attributes:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

node.default['audit']['reporter'] = 'chef-server-automate'
node.default['audit']['fetcher'] = 'chef-server'

node.default['audit']['profiles'].push(
  'name': 'centos level1',
  'compliance': 'ggotimer/cis-centos7-level1'
)
node.default['audit']['profiles'].push(
  'name': 'centos level2',
  'compliance': 'ggotimer/cis-centos7-level2'
)
node.default['audit']['interval'] = {
  'enabled': false
}
