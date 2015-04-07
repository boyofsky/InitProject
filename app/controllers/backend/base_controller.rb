class Backend::BaseController < ApplicationController

  before_action :authenticate_user!
  #load_and_authorize_resource
  
  layout 'backend'
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end  
  
end
