require 'spec_helper'
describe 'sysadmins' do
  context 'with default values for all parameters' do
    it { should contain_class('sysadmins') }
  end
end
