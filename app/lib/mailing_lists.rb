module MailingLists
  def subscribe_user_to_mailing_list(result, current_user)
    if result == :fearless
      SubscribeUserToFearlessListJob.perform_later(current_user)
    end
    ResultMailer.result_email(current_user).deliver_later
  end
end
