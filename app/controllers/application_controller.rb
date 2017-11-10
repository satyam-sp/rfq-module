class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    

    rescue_from CanCan::AccessDenied do |exception|
      flash[:error] = "Access denied."
      redirect_to root_url
    end  

    
    protected
    def after_sign_in_path_for(resource)
      resource.role?.eql?("user") ? root_path : admin_dashboard_path
    end
end
