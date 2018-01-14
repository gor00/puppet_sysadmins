# Class: sysadmins
# ===========================
#
# Full description of class sysadmins here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'sysadmins':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2018 Your name here, unless otherwise noted.
#
class sysadmins {
    class { 'fail2ban': }
    package {'net-tools': ensure => 'installed' }
    class { 'locales':
        default_locale  => 'en_US.UTF-8',
        locales         => ['en_US.UTF-8 UTF-8'],
        lc_all          => 'en_US.UTF-8',
    }
    
    file {'/usr/local/bin/diskusage':
        source => "puppet:///modules/sysadmins/usr/local/bin/diskusage",
        mode   => "0754",
    }
}
