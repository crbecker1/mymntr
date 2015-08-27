class Views::Quizzes::New < Views::Base
  needs :quiz

  def content
    full_row {
      render 'form'
    }
  end
end
