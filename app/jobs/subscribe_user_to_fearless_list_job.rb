class SubscribeUserToFearlessListJob < ActiveJob::Base
  queue_as :default

  def perform(account)
    gb = Gibbon::Request.new
    gb.lists(ENV["MAILCHIMP_LIST_ID"]).members.create(
      body: {
        email_address: account.email,
        status: "subscribed"
      })
  end
end
