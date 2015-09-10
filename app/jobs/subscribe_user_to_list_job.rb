class SubscribeUserToListJob < ActiveJob::Base
  queue_as :default

  def perform(account, result_string)
    list = ENV["MAILCHIMP_#{result_string.upcase}_LIST_ID"]
    gb = Gibbon::Request.new
    subscribed_emails = gb.lists(list).members.retrieve['members'].map { |m|
      m['email_address'].downcase
    }
    unless subscribed_emails.include?(account.email.downcase)
      gb.lists(list).members.create(
        body: {
          email_address: account.email,
          status: "subscribed"
        })
    end
  end
end
