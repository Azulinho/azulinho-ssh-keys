require_relative 'spec_helper'


describe file('/home/vagrant/.ssh') do
  it { should be_directory }
  it { should be_mode 700 }
  it { should be_owned_by 'vagrant' }
  it { should be_grouped_into 'vagrant' }
end

describe file('/home/vagrant/.ssh/id_rsa') do
  it { should be_file }
  it { should be_mode 600 }
  it { should be_owned_by 'vagrant' }
  it { should be_grouped_into 'vagrant' }
end

describe file('/home/vagrant/.ssh/id_rsa.pub') do
  it { should be_file }
  it { should be_mode 600 }
  it { should be_owned_by 'vagrant' }
  it { should be_grouped_into 'vagrant' }
end

describe file('/home/vagrant/.ssh/authorized_keys') do
  it { should be_file }
  it { should be_mode 600 }
  it { should be_owned_by 'vagrant' }
  it { should be_grouped_into 'vagrant' }
end
