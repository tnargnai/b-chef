# test/integration/nginx-server/serverspec/spec_helper.rb

require 'serverspec'
require 'pathname'

set :backend, :exec

set :path, '/bin:/usr/local/bin:$PATH'
