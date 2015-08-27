class QuizzesController < ApplicationController
  skip_before_filter :require_login, only: [:new, :create]

  def new
    @quiz = Quiz.new
    render :new, layout: 'logged_out'
  end

  def create
    if current_user.nil?
      session[:quiz] = quiz_params
      redirect_to new_account_path
    else
      @quiz = current_user.create_quiz(quiz_params)
      respond_to do |format|
        if @quiz.save
          format.html { redirect_to my_account_path, notice: 'Quiz was successfully
created.' }
        else
          format.html { render :new }
        end
      end
    end
  end

  private

  def quiz_params
    params.require(:quiz).permit(:name, :account_id)
  end
end
