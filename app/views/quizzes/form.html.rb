require 'yaml'

class Views::Quizzes::Form < Views::Base
  needs :quiz

  def content
    data = YAML::load_file(File.join(__dir__, 'quiz_content.yaml'))
    quiz_content = data["quiz_content"]

    show_explanations_on_questions = (2..12).to_a.shuffle.first(3)
    show_explanations_on_questions << 1
    form_for(quiz) do |f|
      fieldset {
        ol {
          quiz_content.each do |item|
            question_id = item[0]
            question_gets_popup = show_explanations_on_questions.include?(question_id
                                                                            .match(/\d+/)[0].to_i)
            add_question_and_answers item, f, question_gets_popup
          end
        }
        div(:class => "actions") {
          f.submit "Get Result!", class: buttonish
        }
      }
    end
  end

  def add_question_and_answers(yaml, f, show_explanation)
    li {
      question_id = yaml[0]
      content_hash = yaml[1]
      question_text = content_hash["question"]
      a = content_hash["A"]
      b = content_hash["B"]
      p question_text
      f.radio_button(question_id, true)
      f.label(:A, a["answer"])
      explanation_popup(question_id, a["explanation"], true) if show_explanation
      br
      f.radio_button(question_id, false)
      f.label(:B, b["answer"])
      explanation_popup(question_id, b["explanation"], false) if show_explanation
    }
  end

  def explanation_popup(question_id, explanation, category)
    script("$('#quiz_#{question_id}_#{category}').one('click',function(e){$
    ('#radio_#{question_id}_#{category}').foundation('reveal','open');})")

    div(id: "radio_#{question_id}_#{category}", class: "reveal-modal",
      "aria-labelledby" => "modalTitle", "aria-hidden" => "true", "role" => "dialog",
    "data-reveal"=>"") {
      br
      p explanation
      a(class: "close-reveal-modal", "aria-label" => "Close") {
        text "×"
      }
    }
  end
end
