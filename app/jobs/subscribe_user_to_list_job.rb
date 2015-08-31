class SubscribeUserToListJob < ActiveJob::Base
  queue_as :default

  def perform(account, result_string)
    list = ENV["MAILCHIMP_#{result_string.upcase}_LIST_ID"]
    gb = Gibbon::Request.new
    gb.lists(list).members.create(
      body: {
        email_address: account.email,
        status: "subscribed"
      })
  end
end
