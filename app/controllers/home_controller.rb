class HomeController < ApplicationController
  before_filter CASClient::Frameworks::Rails::Filter
  protect_from_forgery
  def index
    @username = nil
    @username = session[:cas_user]
    puts session.inspect

    @login_url = CASClient::Frameworks::Rails::Filter.login_url(self)
    puts @username.inspect + "este es el del metodo index"

    @extra_attributes = session[:cas_extra_attributes]
    @identifier = @extra_attributes["id"]
    @current_user = Profesore.find(8)



  end

  def my_account
    @username = session[:cas_user]

    # Additional user attributes are available if your
    # CAS server is configured to provide them.
    # See http://code.google.com/p/rubycas-server/wiki/HowToSendExtraUserAttributes
    @extra_attributes = session[:cas_extra_attributes]
    @rol = @extra_attributes["roles"]
  end

  def logout
    CASClient::Frameworks::Rails::Filter.logout(self)
    @username = nil
  end

  def current_user
=begin
    @current_user = session[:cas_user]
    @extra_attributes = session[:cas_extra_attributes]
    @current_user = @extra_attributes["roles"]
=end

    @extra_attributes = session[:cas_extra_attributes]
    @identifier = @extra_attributes["id"]
    @current_user = Profesore.find(@identifier)
  end
=begin
  def current_rol
    @extra_attributes = session[:cas_extra_attributes]
    @current_rol = @extra_attributes["roles"]
  end
=end

end
