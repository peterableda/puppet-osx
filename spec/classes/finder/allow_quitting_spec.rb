require 'spec_helper'

describe 'osx::finder::allow_quitting' do
  let(:facts) { {:boxen_user => 'ilikebees'} }

  it do
    should include_class('osx::finder')

    should contain_boxen__osx_defaults('Allow quitting via ⌘ + Q').with({
      :key    => 'QuitMenuItem',
      :domain => 'com.apple.finder',
      :value  => true,
      :notify => 'Exec[killall Finder]',
      :user   => facts[:boxen_user]
    })
  end
end
