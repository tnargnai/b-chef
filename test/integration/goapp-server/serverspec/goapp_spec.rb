# test/integration/goapp-server/serverspec/vim_spec.rb

require 'spec_helper'

# Go webapp service
describe "Go web app should be running" do

  # Binary exists
  describe file('/opt/webapp/latest/web') do
    it { should be_file }
  end

  # Webapp service status
  describe service('webapp') do
    it { should be_enabled   }
    it { should be_running   }
  end

# Waiting to receive requests on port 8484
  describe port(8484) do
    it { should be_listening }
  end

end
