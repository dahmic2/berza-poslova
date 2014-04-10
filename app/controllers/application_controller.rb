class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :current_employer
  before_filter :set_locale

  def set_locale
    if (params[:locale])
      session[:locale] = params[:locale]
    elsif session[:locale].nil?
      session[:locale] = request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    end
    I18n.locale = session[:locale] || I18n.default_locale
  end
  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
 # def current_user
 #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
 # end

  def current_employer
    @current_employer ||= Employer.find(session[:employer_id]) if session[:employer_id]
  end
  def provjera2
    if !current_employer
      redirect_to root_path
    end
  end
  def provjera1
    if !current_user
      redirect_to root_path
    end
  end
  def provjera
    if !current_employer && !current_user
      redirect_to root_path
    end
  end
end
