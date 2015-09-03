class Views::LoggedOut::TakeActionButton < Views::Base
  def content
    div(class: buttonish(:'action-button action-button__text')) {
      link_to "TAKE QUIZ", new_quiz_path
    }
  end
end