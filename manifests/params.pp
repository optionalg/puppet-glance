# Class: glance::params
#
# This class defines default parameters used by the main module class glance
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to glance class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class glance::params {

  ### Application related parameters

  $package = $::operatingsystem ? {
    /(?i:Debian|Ubuntu|Mint)/ => 'glance-compute',
    default                   => 'openstack-glance-compute',
  }

  $service = $::operatingsystem ? {
    /(?i:Debian|Ubuntu|Mint)/ => 'glance-compute',
    default                   => 'openstack-glance-compute',
  }

  $service_status = $::operatingsystem ? {
    default => true,
  }

  $process = $::operatingsystem ? {
    default => 'glance',
  }

  $process_args = $::operatingsystem ? {
    default => '',
  }

  $process_user = $::operatingsystem ? {
    default => 'glance',
  }

  $config_dir = $::operatingsystem ? {
    default => '/etc/glance',
  }

  $config_file = $::operatingsystem ? {
    default => '/etc/glance/glance.conf',
  }

  $config_file_mode = $::operatingsystem ? {
    default => '0644',
  }

  $config_file_owner = $::operatingsystem ? {
    default => 'root',
  }

  $config_file_group = $::operatingsystem ? {
    default => 'root',
  }

  $pid_file = $::operatingsystem ? {
    default => '/var/run/glance.pid',
  }

  $data_dir = $::operatingsystem ? {
    default => '/etc/glance',
  }

  $log_dir = $::operatingsystem ? {
    default => '/var/log/glance',
  }

  $log_file = $::operatingsystem ? {
    default => [ '/var/log/glance/glance-compute.log' , '/var/log/glance/glance-manage.log' ],
  }

  $port = '5000'
  $protocol = 'tcp'

  # General Settings
  $my_class = ''
  $source = ''
  $source_dir = ''
  $source_dir_purge = false
  $template = ''
  $options = ''
  $service_autorestart = true
  $version = 'present'
  $absent = false
  $disable = false
  $disableboot = false

  ### General module variables that can have a site or per module default
  $monitor = false
  $monitor_tool = ''
  $monitor_target = $::ipaddress
  $firewall = false
  $firewall_tool = ''
  $firewall_src = '0.0.0.0/0'
  $firewall_dst = $::ipaddress
  $puppi = false
  $puppi_helper = 'standard'
  $debug = false
  $audit_only = false
  $noops = false

}
