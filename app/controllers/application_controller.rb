class ApplicationController < ActionController::Base
  protect_from_forgery
  helper ApplicationHelper
  helper CommonHelper

  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { :locale => I18n.locale }
  end

end
