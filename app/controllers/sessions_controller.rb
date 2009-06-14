class SessionsController < ApplicationController
  require 'fireeagle'
  def new
    config = YAML.load(File.open(RAILS_ROOT + '/config/fireeagle.yml').read)
    @client = FireEagle::Client.new(config)  
    @request_token = @client.get_request_token("http://localhost:3000/oauth_callback")
    
    session[:request_token] = @request_token.token
    session[:request_token_secret] = @request_token.secret
    session[:authorize_url] = @request_token.authorize_url  
    url = @request_token.authorize_url    
    redirect_to url
  end
  
  def create
  end
  
  def destroy
  end
  
  def oauth_callback

    config = YAML.load(File.open(RAILS_ROOT + '/config/fireeagle.yml').read)
    @client = FireEagle::Client.new(config)  
    @request_token = @client.get_request_token

    @client.request_token.token =  session[:request_token]
    @client.request_token.secret = session[:request_token_secret]
    @access_token = @client.convert_to_access_token(params[:oauth_verifier]) 
    
    session[:request_token] = nil
    session[:request_token_secret] = nil
    
    # clean

  end
end
