class Admin::BaseController < ApplicationController		

   layout 'admin'
   before_filter :authenticate_admin!
  
   # uses_tiny_mce :options => {
   #                            :theme_advanced_toolbar_location => "top",
   #                            :theme_advanced_toolbar_align => "left",
   #                            :theme_advanced_resizing => true,
   #                            :theme_advanced_resize_horizontal => false,                           
   #                            :force_br_newlines => true,
   #                            
   #                            :theme_advanced_buttons1 => %w{bold italic underline strikethrough separator justifyleft justifycenter justifyright justifyfull separator bullist numlist separator link unlink anchor image separator},
   #                            :theme_advanced_buttons2 => %w{separator undo redo separator code separator formatselect},
   #                            :theme_advanced_buttons3 => %w{}
   #                             }
   # rescue_from CanCan::AccessDenied do |exception|
   #     redirect_to admin_root_url, :alert => exception.message
   #   end
end