require 'serverspec'

# :backend can be either :exec or :ssh
# since we are running local we use :exec
set :backend, :exec

describe package('rsyslog'), if: os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe service('rsyslog'), if: os[:family] == 'ubuntu' do
  it { should be_enabled }
  it { should be_running }
  it "sends data on port 6514"
  it "does not send unencrypted data"
end
