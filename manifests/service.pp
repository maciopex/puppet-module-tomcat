class tomcat::service inherits tomcat{
   
  service {$tomcat::service_name:
     ensure => $tomcat::service_state,
     enable => true,
     subscribe => File['/etc/tomcat/tomcat.conf'],

}

}
