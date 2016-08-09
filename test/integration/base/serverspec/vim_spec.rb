# test/integration/base/serverspec/vim_spec.rb

require 'spec_helper'

# Is vim installed
describe package('vim') do
  it { should be_installed }
end

# What version is it
describe command('vim --version') do
  its(:stdout) { should match /VIM - Vi IMproved 7.4/ }
end
