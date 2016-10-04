case node.chef_environment
when 'local', 'docker'
  # attributes
when 'test'
  default['b-goapp']['webapp']['user'] = 'ubuntu'
  default['b-goapp']['webapp']['group'] = 'ubuntu'
when 'uat'
  default['b-goapp']['webapp']['user'] = 'ubuntu'
  default['b-goapp']['webapp']['group'] = 'ubuntu'
when 'prd'
  default['b-goapp']['webapp']['user'] = 'ubuntu'
  default['b-goapp']['webapp']['group'] = 'ubuntu'
end
