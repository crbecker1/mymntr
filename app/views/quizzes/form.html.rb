class Views::Quizzes::Form < Views::Base
  needs :quiz

  def content
    form_for(quiz) do |f|
      fieldset {
        with_errors(quiz, :name) {
          f.text_field :name, placeholder: "Name"
        }

        div(:class => "actions") {
          f.submit "Get Result!", class: buttonish
        }
      }
    end
  end
end
