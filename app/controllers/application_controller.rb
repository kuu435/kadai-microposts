class ApplicationController < ActionController::Base
  include SessionHelper
  private
  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  def counts(user)
    @counts_microposts = user.micropost.count
  end
end
