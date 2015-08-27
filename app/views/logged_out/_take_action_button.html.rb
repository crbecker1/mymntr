class Views::LoggedOut::TakeActionButton < Views::Base
  def content
    div(class: buttonish(:large, :alert), onclick: "analytics.track('acquisition/no-abandon')") {
      link_to "TAKE QUIZ", new_quiz_path
    }
  end
end