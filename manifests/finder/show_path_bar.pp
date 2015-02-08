# Public: Show path bar.
class osx::finder::show_path_bar {
  include osx::finder

  boxen::osx_defaults { 'Show path bar':
    user   => $::boxen_user,
    key    => 'ShowPathbar',
    domain => 'com.apple.finder',
    value  => true,
    notify => Exec['killall Finder'];
  }
}
