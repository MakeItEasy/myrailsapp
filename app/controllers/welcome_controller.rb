class WelcomeController < ApplicationController
  #before_filter :force_ssl

  def index
  end

private
  def force_ssl
    if !request.ssl?
      redirect_to :protocol => 'https', :port => 3001
    end
  end

end
