#
# Cookbook:: webserver_test
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

# Install the httpd package.
package 'httpd'

# Start and enable the httpd service.
service 'httpd' do
  action [:enable,
          :start]
end

# Serve a custom home page.
file '/var/www/html/index.html' do
  content '


'
end
end
