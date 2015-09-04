class Views::Sessions::New < Views::Base
  def content
    row(class:'top-spacer__variable'){
      column(%i[small-12 medium-8 large-6], :class => :"medium-centered large-centered") {
        h1("Sign in")
        p {
          text "Coming back to check your mymntrPROFILE with a new mind? Sign in and take the quiz again! Your mymntrCREW!"
        }

        form_tag session_path, method: 'post' do
          row {
            column(:"small-12 medium-12 large-12") {
              label {
                text "E-mail: "
                text_field_tag :email, nil, tabindex: 1, type: 'email'
              }
              br
              label {
                text "Password: "
                link_to "Forgot?", new_password_reset_path
                password_field_tag :password, nil, tabindex: 2
              }
              br
              submit_tag "Sign In", class: buttonish(:medium), tabindex: 3
            }
          }
        end
      }
    }
  end
end
