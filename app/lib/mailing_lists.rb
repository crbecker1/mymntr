module MailingLists
  def subscribe_user_to_mailing_list(result, current_user)
    SubscribeUserToListJob.perform_later(current_user, result)
    ResultMailer.result_email(current_user).deliver_later
  end
end
