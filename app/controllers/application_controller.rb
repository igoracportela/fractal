# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
class ApplicationController < ActionController::Base
  protect_from_forgery
  
  layout :render_layout
  before_filter :set_locale, :load
  
  def render_layout
    if self.is_a?(Devise::SessionsController) || self.is_a?(Devise::PasswordsController) 
      'login'
    elsif devise_controller?
      'admin'
    else
      'application'
    end
  end
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to admin_url, :alert => "Desculpe. Você não tem permissão para acessar esta página!"
  end
  
  def after_sign_in_path_for(resource)
    admin_path
  end
  
  def after_sign_out_path_for(resource_name)
    new_admin_session_path
  end
  
  protected

  def current_user
    current_admin
  end

  def set_locale
     I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { :locale => I18n.locale }
  end

  def load
    #@presenter = Site::Panel::IndexPresenter.new
  end
end
