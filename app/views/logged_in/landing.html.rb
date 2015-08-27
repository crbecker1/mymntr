class Views::LoggedIn::Landing < Views::Base
  needs :quiz

  def content
    full_row {
      h1("My Results")
      text quiz.result.to_s
      text(
        social_share_button_tag(
          "MYMNTR",
          url: "http://mymntr.com",
          popup: "true"
        )
      )
    }
  end
end
