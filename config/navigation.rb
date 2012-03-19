SimpleNavigation::Configuration.run do |navigation|  
  navigation.items do |primary|
    primary.item :home, 'Home', root_path
    primary.item :about, 'About Us', viewer_path("about")
    primary.item :gallery, 'Gallery',viewer_path("gallery")
    #primary.item :news, 'News', viewer_path("news")
    primary.item :contact, 'Contact', new_contact_path
    primary.item :facebook, 'Facebook', "http://www.facebook.com/RagAndBoneMan
"
    #primary.item :admin, 'Login', admin_root_path
  end
end