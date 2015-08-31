class Views::ResultMailer::ResultEmail < Views::EmailBase
  needs :result

  def content
    h1("Your mymntrPROFILE")
    p "Ok, your brain is good at many things, but what stands out most from the quiz is
you have a:"
    case result
    when :cant_touch
      render partial: "shared/profiles/fearless"
    when :badass
      render partial: "shared/profiles/badass"
    when :om_baby
      render partial: "shared/profiles/om_baby"
    when :cant_touch
      render partial: "shared/profiles/cant_touch"
    end
  end
end