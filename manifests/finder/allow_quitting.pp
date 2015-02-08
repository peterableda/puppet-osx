# Public: Allow quitting via ⌘ + Q.
class osx::finder::allow_quitting {
  include osx::finder

  boxen::osx_defaults { 'Allow quitting via ⌘ + Q':
    user   => $::boxen_user,
    key    => 'QuitMenuItem',
    domain => 'com.apple.finder',
    value  => true,
    notify => Exec['killall Finder'];
  }
}
