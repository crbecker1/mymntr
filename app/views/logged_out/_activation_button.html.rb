class Views::LoggedOut::ActivationButton < Views::Base
  def content
    div(class: buttonish(:large, :alert, :bordered)) {
      a(href: "#") {
        text "Activate"
      }
    }
  end
end