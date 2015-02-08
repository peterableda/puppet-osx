# Public: Set the trackpad tracking speed.
#
# speed - the speed of the trackpad. Defaults to 3.
#
# Examples
#
#   # set the tracking speed to 3...
#   include osx::global::trackpad_tracking_speed
#
#   # ...or pick your own tracking speed!
#   class { 'osx::global::trackpad_tracking_speed':
#     rate => 2.5
#   }
class osx::global::trackpad_tracking_speed($speed = 3) {
  boxen::osx_defaults { 'Set the trackpad tracking speed':
    domain => 'NSGlobalDomain',
    type   => 'float',
    key    => 'com.apple.trackpad.scaling',
    value  => $speed,
    user   => $::boxen_user;
  }
}