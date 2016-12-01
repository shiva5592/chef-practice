#
# Cookbook Name:: shiva
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe "tomcat"

tomcat_install 'quality' do
  version '8.0.36'
end

tomcat_service 'quality' do
  action :start
 env_vars [{ 'CATALINA_PID' => '/my/special/path/tomcat.pid' }]
 end



