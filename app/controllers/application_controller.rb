class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :izbrisi
  helper_method :say

  before_filter :set_locale

  def set_locale
    if params[:locale]
      session[:locale] = params[:locale]
    elsif session[:locale].nil?
      session[:locale] = request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    end
    I18n.locale = session[:locale] || I18n.default_locale
  end

  def say
    "hello"
  end


  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end




  def provjera
    if !current_user
      redirect_to root_path
    end
  end

  def izbrisi(id)
    user = User.find(id)
    user.update_attribute(:email, '')
  end

end
