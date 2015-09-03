class LoggedInController < ApplicationController
  def landing
    track('profile')
    @quiz = current_user.quiz
  end
end
