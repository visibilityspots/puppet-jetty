# Class: jetty::service
#
# Class which controls the jetty service
class jetty::service {
  service { 'jetty':
    ensure     => 'running',
    hasrestart => true,
  }
}
