class Views::Quizzes::New < Views::Base
  needs :quiz

  def content
    row(class:'logo-hero hero-image-logo full-width small-12') {
    }

    row(class:'white-container intro-blurb') {
      column('small-10 small-offset-1 medium-8 medium-offset-2') {
        h2 "Which mymntrPROFILE are you?", class: 'bottom-spacer__small top-spacer__mobile'
        p {
          text "Take the quiz and find out if you are:"
        }
        p {
          strong "Bad-*ss Brain!"
          br
          strong "Om-Baby!"
          br
          strong "Fearless Focus Freak On!"
          br
          strong "Can’t Touch This!"
        }
      }
    }
    hr(class:'small-10 small-offset-1')

    full_row {
      render 'form'
    }
  end
end
