class Views::LoggedIn::Landing < Views::Base
  needs :quiz

  def content
    full_row{
      h1("Your mymntrPROFILE")
      p "Ok, your brain is good at many things, but what stands out most from the quiz is
you have a:"
      case quiz.result
      when :fearless
        render partial: "shared/profiles/fearless"
      when :badass
        render partial: "shared/profiles/badass"
      when :om_baby
        render partial: "shared/profiles/om_baby"
      when :cant_touch
        render partial: "shared/profiles/cant_touch"
      end
      h2 "Share your mymntrPROFILE with friends:"
      p {
        text(
          social_share_button_tag(
            "I took the mymntrPROFILE QUIZ and learned that I'm '#{profile_name(quiz)}'",
            url: "http://mymntr.com",
            popup: "true"
          )
        )
      }
      p {
        text "Did you check out the "
        link_to "lingoDECODER", decoder_path, class: 'link-copy'
        text "? It’s there to help you understand the lingo."
      }
    }
  end

  def profile_name(quiz)
    case quiz.result
    when :fearless
      "Fearless Focus Freak On!"
    when :badass
      "Bad-*ss-Brain!"
    when :om_baby
      "OM-Baby!"
    when :cant_touch
      "Can't Touch This!"
    end
  end
end
