class ApplicationController < ActionController::Base
  protect_from_forgery




  def current_user
    @extra_attributes = session[:cas_extra_attributes]
    @identifier = @extra_attributes["id"]
    @current_user = Profesore.find(@identifier)
  end

  def current_ability
    @current_ability ||= Ability.new(current_user)
  end
  def current_rol
    @extra_attributes = session[:cas_extra_attributes]
    @current_rol = @extra_attributes["roles"]
  end

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Acceso denegado!"
    redirect_to index_path
  end
end
