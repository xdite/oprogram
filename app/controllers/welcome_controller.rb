class WelcomeController < ApplicationController
  
  before_filter :login_required , :only => [:show ]  
  
  def index
  end
  
  def show
  end
end
