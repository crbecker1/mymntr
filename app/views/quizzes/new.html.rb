class Views::Quizzes::New < Views::Base
  needs :quiz

  def content
    row(class:'logo-hero hero-image-logo full-width small-12') {
    }
    full_row {
      render 'form'
    }
  end
end
