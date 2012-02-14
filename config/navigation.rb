SimpleNavigation::Configuration.run do |navigation|  
  navigation.items do |primary|
    primary.item :home, 'Home', root_path
    
    primary.item :admin, 'Admin', admin_root_path
  end
end