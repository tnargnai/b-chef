# # encoding: utf-8

# Inspec test for recipe app_memcache::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe port(8484) do
  it { should_not be_listening }
end
