class LoggedInController < ApplicationController
  def landing
    @quiz = current_user.quiz
  end
end
