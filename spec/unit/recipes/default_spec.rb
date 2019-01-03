require 'spec_helper'

require 'spec_helper'

%w( 8 9 ).each do |version|
  describe "Snort Install on Debian #{version}" do
    let(:runner) { ChefSpec::ServerRunner.new(platform: 'debian', version: version, step_into: ['snort_install']) }

    it 'converges successfully' do
      expect { :chef_run }.to_not raise_error
    end
  end
end

%w( 16.04 18.04 ).each do |version|
  describe "Snort Install on Ubuntu #{version}" do
    let(:runner) { ChefSpec::ServerRunner.new(platform: 'ubuntu', version: version, step_into: ['snort_install']) }

    it 'converges successfully' do
      expect { :chef_run }.to_not raise_error
    end
  end
end

%w( 26 27 29 29 ).each do |version|
  describe "Snort Install on Fedora #{version}" do
    let(:runner) { ChefSpec::ServerRunner.new(platform: 'fedora', version: version, step_into: ['snort_install']) }

    it 'converges successfully' do
      expect { :chef_run }.to_not raise_error
    end
  end
end

describe 'Snort Install on Amazon Linux 2' do
  let(:runner) { ChefSpec::ServerRunner.new(platform: 'amazon', version: '2', step_into: ['snort_install']) }

  it 'converges successfully' do
    expect { :chef_run }.to_not raise_error
  end
end

# RHEL Platforms

%w( centos redhat ).each do |platform|
  describe "Snort Install on #{platform}" do
    let(:runner) { ChefSpec::ServerRunner.new(platform: 'platform', version: '7', step_into: ['snort_install']) }

    it 'converges successfully' do
      expect { :chef_run }.to_not raise_error
    end
  end
end
