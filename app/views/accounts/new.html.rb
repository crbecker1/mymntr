class Views::Accounts::New < Views::Base
  needs :account

  def content
    row {
      column(%i[small-12 large-8], :class => :"large-centered") {
        h1("Sign up for your profile")
        p "We have your results! To get your mymntrPROFILE, please create a mymntr
account."
        p {
          text "You'll get your profile right here, right now, and we'll send it to you so
you have a reminder of how great of a brain you have. We'll also send you weekly
mymntrHACKS"
          text raw "&#8212;"
          text "more tips and tricks based on your profile!"
        }
        form_for account do |f|
          row {
            column(:"large-12") {
              with_errors(account, :email) {
                label {
                  text "E-mail: "
                  f.text_field :email
                }
              }
            }

            column(:"large-12") {
              with_errors(account, :password) {
                label {
                  text "Password: "
                  f.password_field :password
                }
              }
            }

            column(:"large-12") {
              f.submit class: buttonish(:medium)
            }
          }
        end
      }
    }
  end
end
