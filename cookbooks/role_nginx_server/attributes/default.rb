case node.chef_environment
when 'local', 'docker'
  # attributes
when 'test'
  default['b-nginx']['site']['domain'] = 'test.bci.com'
  default['b-nginx']['site']['app_servers'] = [
    '10.0.1.25',
    '10.0.1.125',
    ]
  default['b-nginx']['site']['backend_port'] = '8484'
when 'uat'
  default['b-nginx']['site']['domain'] = 'uat.bci.com'
  default['b-nginx']['site']['app_servers'] = [
    '10.0.1.15',
    '10.0.1.128',
    ]
  default['b-nginx']['site']['backend_port'] = '8484'
when 'prd'
  default['b-nginx']['site']['domain'] = 'bci.com'
  default['b-nginx']['site']['app_servers'] = [
    '10.0.1.202',
    '10.0.1.48',
    ]
  default['b-nginx']['site']['backend_port'] = '8484'
end
