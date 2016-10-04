case node.chef_environment
when 'local', 'docker'
  # attributes
  # default['b-goapp']['webapp']['user'] = 'deployer'
  # default['b-goapp']['webapp']['group'] = 'deployer'
when 'test'
  # attributes
when 'uat'
  # attributes
when 'prd'
end
