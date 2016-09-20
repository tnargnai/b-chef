source 'https://supermarket.chef.io'

Dir.glob(File.expand_path('../cookbooks/*', __FILE__)).each do |path|
  metadata :path => path
end

cookbook 'b-nginx', git: 'git://github.com/tnargnai/b-nginx.git'
cookbook 'b-goapp', git: 'git://github.com/tnargnai/b-goapp.git'
cookbook 'b-base', git: 'git://github.com/tnargnai/b-base.git'
cookbook 'b_helpers', git: 'git://github.com/tnargnai/b_helpers.git'
