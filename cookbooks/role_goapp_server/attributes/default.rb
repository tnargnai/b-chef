case node.chef_environment
when 'local', 'docker'
  # attributes
when 'test'
  default['b-goapp']['webapp']['user'] = 'vagrant'
  default['b-goapp']['webapp']['group'] = 'vagrant'
when 'uat'
  default['b-goapp']['webapp']['user'] = 'vagrant'
  default['b-goapp']['webapp']['group'] = 'vagrant'
when 'prd'
  default['b-goapp']['webapp']['user'] = 'vagrant'
  default['b-goapp']['webapp']['group'] = 'vagrant'
end
