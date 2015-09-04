module Views
  module PasswordResets
    class New < Base
      def content
        row(class:'top-spacer__variable') {
          column(:'medium-6', class: :'medium-centered') {
            h1("Forgot your password?")
            form_tag password_resets_path, method: :post do
              label {
                text "Email "
                text_field_tag :email
              }
              submit_tag "Reset my password!", class: buttonish(:"action-button action-button__text uppercase-style")
            end
          }
        }
      end
    end
  end
end
