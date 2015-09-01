class Views::LoggedIn::Landing < Views::Base
  needs :quiz

  def content
    full_row {
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
      h4 "Share your mymntrPROFILE with friends:"
      p {
        text(
          social_share_button_tag(
            "MYMNTR",
            url: "http://mymntr.com",
            popup: "true"
          )
        )
      }
      p {
        text "Did you check out the "
        link_to "mymntrDECODER", decoder_path
        text "? It’s there to help you understand the lingo."
      }
    }
  end
end
