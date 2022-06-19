class ApplicationController < ActionController::Base
  before_action :set_locale

  def set_locale
    cookies[:locale] = params[:locale] if params[:locale]

    return unless cookies[:locale]

    I18n.locale = cookies[:locale] if I18n.locale != cookies[:locale]
  end
end
