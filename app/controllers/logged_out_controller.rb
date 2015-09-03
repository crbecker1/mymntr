class LoggedOutController < ApplicationController
  skip_before_filter :require_login
  layout 'layouts/logged_out'

  def contact
  end

  def team
    track('acquisition/visit/team')
  end

  def about
    track('acquisition/visit/about')
  end

  def decoder
    track('acquisition/visit/decoder')
  end

  def index
    track('acquisition/visit/home')
    @count = Quiz.count
  end

  def not_found
    redirect_to root_url
  end
end
