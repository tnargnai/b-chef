source 'https://supermarket.chef.io'

Dir[File.expand_path('../cookbooks/*', __FILE__)].each do |path|
  cookbook(File.basename(path), path: path)
end

cookbook 'b-nginx', git: 'git://github.com/tnargnai/b-nginx.git'
cookbook 'b-goapp', git: 'git://github.com/tnargnai/b-goapp.git'
cookbook 'b-base', git: 'git://github.com/tnargnai/b-base.git'
cookbook 'b_helpers', git: 'git://github.com/tnargnai/b_helpers.git'
cookbook 'b_hardening', git: 'git://github.com/tnargnai/b_hardening.git'
