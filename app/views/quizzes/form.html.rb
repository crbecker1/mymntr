require 'yaml'

class Views::Quizzes::Form < Views::Base
  needs :quiz

  def content
    data = YAML::load_file(File.join(__dir__, 'quiz_content.yaml'))
    quiz_content = data["quiz_content"]

    form_for(quiz) do |f|
      fieldset {
        ol {
          quiz_content.each do |item|
            add_question_and_answers item, f
          end
        }
        div(:class => "actions") {
          f.submit "Get Result!", class: buttonish
        }
      }
    end
  end

  def add_question_and_answers(yaml, f)
    li {
      question_id = yaml[0]
      content_hash = yaml[1]
      question_text = content_hash["question"]
      a = content_hash["A"]
      b = content_hash["B"]
      p question_text
      f.radio_button(question_id, true)
      f.label(:A, a["answer"])
      br
      f.radio_button(question_id, false)
      f.label(:B, b["answer"])
    }
  end
end
