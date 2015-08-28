class QuizzesController < ApplicationController
  include MailingLists

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
      @result = @quiz.result
      subscribe_user_to_mailing_list(@result, current_user)
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
    params.require(:quiz).permit(
      :name,
      :account_id,
      :question_1,
      :question_2,
      :question_3,
      :question_4,
      :question_5,
      :question_6,
      :question_7,
      :question_8,
      :question_9,
      :question_10,
      :question_11,
      :question_12
    )
  end
end
