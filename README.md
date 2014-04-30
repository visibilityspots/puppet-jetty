# puppet-jetty module

A puppet-module which configures the [jetty](http://www.eclipse.org/jetty/)

The generated rpm package from the jetty directory using maven  needs to be uploaded to an available repository so the puppet module can install it.

You could use for example my [packagecloud.io](https://packagecloud.io/visibilityspots/packages) repository which you can install on CentOS by:

```bash
$ curl https://packagecloud.io/install/repositories/visibilityspots/packages/script.rpm | sudo bash
```

Tested on a CentOS 6.5 machine using puppet 3.5.1 and ruby 1.8.7

## Options

```puppet
   $pkg_name    = defaults to 'jetty-9-1.3',
```

## Example

To implement using the defaults or with hiera support:

```puppet
  node 'jetty' {
    include jetty
  }
```

For an implementation with custom values without hiera support:

```puppet
  node 'jetty' {
    class {
      'jetty':
        pkg_name => 'jetty-9-1.4',
    }
  }
```
