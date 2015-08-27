class QuizzesController < ApplicationController
  skip_before_filter :require_login, only: [:new]

  def new
    @quiz = Quiz.new
    render :new, layout: 'logged_out'
  end
end
