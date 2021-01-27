apt_update 'Update the apt cache daily' do
    frequency 86_400
    action :periodic
  end
  
  package 'apache2' do
    action :remove
  
  service 'apache2' do
    supports status: true
    action [:enable, :start]
  end
  
