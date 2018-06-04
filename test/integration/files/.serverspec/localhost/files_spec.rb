require 'serverspec'
set :backend, :exec

describe file('/tmp/testFile') do
    it { should exist}
    it { should be_file }
    it { should be_mode 0400 }
end

describe file('/tmp/testDirectory') do
    it { should exist }
    it { should be_directory }
end
