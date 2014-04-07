# Class: jetty::install
#
# Installation of the jetty package
class jetty::install {
  package { $jetty::pkg_name :
    ensure  => 'installed'
  }
}
