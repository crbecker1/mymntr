class Views::LoggedIn::Landing < Views::Base
  needs :quiz

  def content
    full_row {
      h1("My Results")
      text quiz.name
    }
  end
end
