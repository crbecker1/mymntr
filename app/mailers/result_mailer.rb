class ResultMailer < ApplicationMailer
  default from: "smartbot@mymntr.com"
 
  def result_email(account)
    @account = account
    @result = account.quiz.result
    mail(to: @account.email, subject: "You have a #{@result.to_s} brain!")
  end
end
