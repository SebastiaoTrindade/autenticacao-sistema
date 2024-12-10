class ApplicationController < ActionController::Base
  include SessionsHelper

  private

  def logged_in_user
    unless logged_in?
      flash[:danger] = 'Por favor, faça o login'
      redirect_to login_url
    end    
  end
end
