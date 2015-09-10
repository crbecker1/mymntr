class Views::ResultMailer::ResultEmail < Views::EmailBase
  needs :result

  def content
    p "Thanks for staying connected! We hope you dig mymntr, and love your brain more!"
    p {
      text "Over the coming weeks, we'll also send you more tips and tricks about your
brain to use for your life! Also, "
      link_to "keep in touch","http://www.mymntr.com"
      text " and share your mind and ideas with us!"
    }
    p "Here's your profile:"
    case result
    when :fearless
      render partial: "shared/profiles/fearless"
    when :badass
      render partial: "shared/profiles/badass"
    when :om_baby
      render partial: "shared/profiles/om_baby"
    when :cant_touch
      render partial: "shared/profiles/cant_touch"
    end
    hr
    p "And, remember the brain you have is not the brain you're stuck with!"
    p {
      text "Brainy hug,"
      br
      text "The mymntr Crew"
    }
    p "P.S. You need at least 5-8 hugs a day to keep your Oxytocin levels up — that's
the \"love\" hormone that keeps you happy and connected!"
  end
end