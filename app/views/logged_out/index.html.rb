class Views::LoggedOut::Index < Views::Base
  needs :count

  def content
    row(class:'screaming-hero hero-image full-width small-12') {

    }
    row(class:'small-blue-container show-for-small-only') {
      column('small-9 small-centered text-center'){
        h1 "be inspired to know your own mind", class:'heading-style'
      }
    }

    row(class:'white-container intro-blurb') {
      column('show-for-medium-up medium-3 medium-offset-1') {
        image_tag('phone-asset.png', class: 'image-size-reduction')
      }
      column('small-12 small-centered medium-7 end large-6', class: 'add-gutter') {
        p "What happens when you are introduced to superpowers you never thought you had?"
        p "What happens when you have a user guide for your brain? One that is relevant to your everyday life?"
        p "You change. You adapt. You begin to become who you want to be by knowing how your brain works, how to use it better and ultimately, know your own mind."
        p "Check out our videos to see more."
      }
      column('show-for-small-only small-6 small-centered') {
        image_tag('phone-asset.png', class: 'bottom-spacer')
      }
    }

    # wide_row(:'blue-container caption-text') {
    #   p "We’re (hot link to ‘about us’) making mymntr with media-makers, change-agents, and neuroscientists with you in mind. What you will experience here is a sneak peak."
    #   p "* Check out the conversations Kevin, your brain guide, (*bio link) had with these amazing humans to explore how their minds work and what makes them tick."
    #   p "* Get your mymntrPROFILE? (use it to kick ass, boost life skills, and be your own mentor)"
    #   p "* Check out the mymntrDECODER? It will help you understand the lingo of the brain."
    #   p "* Sign up to get mymntrHACKS to get more tools, tips, and tricks to use that circuitry."
    #   p "* Tell us what you think. We want your feedback. Click here to SPEAK YOUR MIND."
    # }

    row(class:'blue-container full-width body-copy') {
      column('small-12 medium-9 medium-centered large-7 large-centered') {
        h2 "Hi, you're invited to build your own culturally relevant user guide for YOUR brain...", class:'body-title'
        ul
          li "– A new way to find out what’s going on up there in your own mixture of cells."
          li "– A new way to know how your circuits can amp up your life + work."
          li "– Oh. It might help you improve your world by changing how you view your world with the brain in mind."
        br
        p "We’re making mymntr with media-makers, change-agents, and neuroscientists -- all for you!", class: 'body-copy'
      }
    }

    row(class:'white-container mobile-padding') {
      column('small-12 medium-7 large-7') {
        div(class:'flex-video small-margin') {
          iframe(width:'420', height:'315', src:"https://www.youtube.com/embed/XQu8TTBmGhA?rel=0", frameborder:"0", allowfullscreen:'true')
        }
        div {
          a "Lorne Lanning's Bio", class: 'link-copy__small', "data-reveal-id" => "bioModal-1"
        }
        div(:id => 'bioModal-1', :class => "reveal-modal", "data-reveal" => "", "aria-labelledby" => "modalTitle", "aria-hidden" => "true", "role" => "dialog") {
          h2 "Lorne's Bio", id: 'modalTitle'
          p "Lorne Lanning designed Oddworld, one of the breakthrough narrative games and is one of the leading game designers in the world. His work as a trained painter in New York and animator in Hollywood make him a true hybrid original.", class: 'body-copy'
          a "x", class: 'close-reveal-modal'
        }
      }

      column('small-12 medium-5 large-5 mobile-padding') {
        h2 "The brain you have is not the brain you are stuck with!", class: 'body-title'
        p "Have they inspired you to get your mymntrPROFILE? (use it to kick ass, boost life skills, and be your own mentor) Click here to take the quiz.", class: 'body-copy'

        p(class: 'body-copy') {
          text "Did you check out the "
          link_to 'mymntrDECODER', decoder_path, class: 'link-copy'
          text "? It's there to help you understand the lingo."
        }
        render partial: "take_action_button"
        p "#{count} people have already!"
      }
    }

    row(class:'white-container variable-padding') {
      column('small-12 medium-4 large-4') {
        div(class:'flex-video small-margin') {
          iframe(width:'420', height:'315', src:"https://www.youtube.com/embed/XQu8TTBmGhA?rel=0", frameborder:"0", allowfullscreen:'true')
        }
        div {
          a "Monica Thieu's Bio", class: 'link-copy__small', "data-reveal-id" => "bioModal-2"
        }
        div(:id => 'bioModal-2', :class => "reveal-modal", "data-reveal" => "", "aria-labelledby" => "modalTitle", "aria-hidden" => "true", "role" => "dialog") {
          h2 "Monica's Bio", id: 'modalTitle'
          p "Monica Thieu is a postdoctorate student in neuroscience at Stanford. She is the youngest college Jeopardy winner, and “melted the buzzer” so well that her winnings paid for her entire college degree.", class: 'body-copy'
          a "x", class: 'close-reveal-modal'
        }
      }

      column('small-12 medium-4 large-4 variable-padding') {
        div(class:'flex-video small-margin') {
          iframe(width:'420', height:'315', src:"https://www.youtube.com/embed/XQu8TTBmGhA?rel=0", frameborder:"0", allowfullscreen:'true')
        }
        div {
          a "Dr. Wallace J. Nichols' Bio", class: 'link-copy__small', "data-reveal-id" => "bioModal-3"
        }
        div(:id => 'bioModal-3', :class => "reveal-modal", "data-reveal" => "", "aria-labelledby" => "modalTitle", "aria-hidden" => "true", "role" => "dialog") {
          h2 "Dr. Nichols' Bio", id: 'modalTitle'
          p "Dr. Wallace J. Nichols is the New York Times best selling author of Bluemind. As a marine biologist, explorer, and advocate he is considered the “Cousteau” of our time. Embracing his role as both scientist and advocate, J has helped save two species of turtles, create international advocacy movements, and a burgeoning discussion on how water impacts the brain.", class: 'body-copy'
          a "x", class: 'close-reveal-modal'
        }
      }

      column('small-12 medium-4 large-4 variable-padding') {
        div(class:'flex-video small-margin') {
          iframe(width:'420', height:'315', src:"https://www.youtube.com/embed/XQu8TTBmGhA?rel=0", frameborder:"0", allowfullscreen:'true')
        }
        div {
          a "Nathalia Scherer's Bio", class: 'link-copy__small', "data-reveal-id" => "bioModal-4"
        }
        div(:id => 'bioModal-4', :class => "reveal-modal", "data-reveal" => "", "aria-labelledby" => "modalTitle", "aria-hidden" => "true", "role" => "dialog") {
          h2 "Nathalia's Bio", id: 'modalTitle'
          p "Nathalia Scherer is a Dalai Lama Fellow, and part of their compassionate leadership training program. She trained as an engineer, and has also studied dance and languages. Currently, Nathalia is head of Global Relationships for International Connector, an organization that creates solutions that include and engage Millennials.", class: 'body-copy'
          a "x", class: 'close-reveal-modal'
        }
      }

    }


    javascript "analytics.track('acquisition/visit')"
  end
end
