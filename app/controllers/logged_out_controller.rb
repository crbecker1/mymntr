class LoggedOutController < ApplicationController
  skip_before_filter :require_login
  layout 'layouts/logged_out'

  def contact
  end

  def team
  end

  def about
  end

  def index
    @count = Quiz.count
  end

  def not_found
    redirect_to root_url
  end
end
