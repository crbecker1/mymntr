class SubscribeUserToListJob < ActiveJob::Base
  queue_as :default

  def perform(account, result)
    list = ENV["MAILCHIMP_#{result.to_s.upcase}_LIST_ID"]
    gb = Gibbon::Request.new
    gb.lists(list).members.create(
      body: {
        email_address: account.email,
        status: "subscribed"
      })
  end
end
