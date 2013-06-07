# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Activerecord::Application.initialize!


CASClient::Frameworks::Rails::Filter.configure(
    :cas_base_url => "https://localhost/",
    :logout_url => "https://localhost/logout",
    :username_session_key => :cas_user,
    :extra_attributes_session_key => :cas_extra_attributes,
    #:logger => cas_logger,
    :authenticate_on_every_request => true,
    :enable_single_sign_out => true

)
