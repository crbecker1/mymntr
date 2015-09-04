class Views::Accounts::New < Views::Base
  needs :account

  def content
    row {
      column(%i[small-12 large-8], :class => :"large-centered") {
        h1("Sign up for your profile")
        p {
          text "To get your profile, please share your email. You will then see it right here, right now and via email so you can remind yourself how great your brain is. We'll also send you weekly
mymntrHACKS"
          text raw "&#8212;"
          text "more tips and tricks based on your profile!"
        }
        p {
          text "(We won't spam you or sell or distribute your contact info. We think that's bad for your brain and obnoxious.) Your mymntrCREW."
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
