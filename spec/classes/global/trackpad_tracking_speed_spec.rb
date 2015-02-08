require 'spec_helper'

describe 'osx::global::trackpad_tracking_speed' do
  let(:facts) { {:boxen_user => 'ilikebees'} }

  it do
    should contain_boxen__osx_defaults('Set the trackpad tracking speed').with_value(3)
  end

  describe 'with parameters' do
    let(:params) { {:speed => 2.5} }

    it 'allows you to pass a speed value' do
      should contain_boxen__osx_defaults('Set the trackpad tracking speed').with({
        :domain => 'NSGlobalDomain',
        :type   => 'float',
        :key    => 'com.apple.trackpad.scaling',
        :value  => params[:speed],
        :user   => facts[:boxen_user]
      })
    end
  end
end
