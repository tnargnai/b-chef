# test/integration/nginx-server/serverspec/vim_spec.rb

require 'spec_helper'

# Nginx service
describe "Nginx services should be running" do

  # Is nginx installed
  describe package('nginx') do
    it { should be_installed }
  end

  # Nginx service status
  describe service('nginx') do
    it { should be_enabled   }
    it { should be_running   }
  end

# Waiting to receive requests on port 80
  describe port(80) do
    it { should be_listening }
  end

end
