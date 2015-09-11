class Views::LoggedOut::Index < Views::Base
  needs :count

  def content
    row(class: 'screaming-hero hero-image full-width small-12') {

    }
    row(class: 'small-blue-container show-for-small-only') {
      column('small-9 small-centered text-center') {
        h1 "be inspired to know your own mind", class: 'heading-style'
      }
    }

    row(class: 'white-container intro-blurb') {
      column('show-for-medium-up medium-3 medium-offset-1') {
        image_tag('phone-asset.png', class: 'image-size-reduction')
      }
      column('small-12 small-centered medium-7 end large-6', class: 'add-gutter') {
        p "What happens when you are introduced to superpowers you never thought you had?"
        p "What happens when you have a user guide for your brain? One that is relevant to your everyday life?"
        p "You change. You adapt. You begin to become who you want to be by knowing how your brain works, how to use it better, and ultimately, know your own mind."
        p "The truth is the brain you have is not the brain you’re stuck with...really."
      }
      column('show-for-small-only small-6 small-centered') {
        image_tag('phone-asset.png', class: 'bottom-spacer')
      }
    }

    row(class: 'blue-container full-width body-copy') {
      column('small-12 medium-9 medium-centered large-7 large-centered') {
        h2 "We're making mymntr a culturally relevant user guide for your brain with media-makers, change-agents, and neuroscientists.", class: 'body-title'
        br
        p "What you will experience here is a sneak peek - it's not a finished product... it's a pilot… so, please explore it and connect with us! Do you dig it?!"
        ul {
          li {
            text "Check out our video conversations hosted by brain guide, "
            a "Dr. Kevin Weiner", class: 'link-copy__black', "data-reveal-id" => "bioModal-5"
            text ", as he explores the minds of some amazing humans and what makes them tick."
          }

          li { text "Get your mymntrPROFILE. Use it to kick ass, boost life skills, and be your own mentor." }

          li { text "Check out the lingoDECODER? It will help you understand the language of the brain." }

          li { text "Sign up for mymntrHACKS. Tools, tips, and tricks to use that circuitry." }
        }

        h2 {
          text "*Tell us what you think. We want your feedback. "
          a(onclick: "$('#feedbacklite img').click()", class: 'link-copy__black') {
            text "SPEAK YOUR MIND."
          }
        }
      }
    }


    row(class: 'white-container small-12 medium-6 medium-centered large-6 large-centered') {
      row(class: 'kevin-bio white-container__small') {
        div(class: 'small-4 medium-3 large-2 columns') {
          image_tag('kevin-bio.jpg')
        }
        div(class: 'small-8 medium-8 large-10 columns') {
          h2 {
            text "Join mymntr Neuroscientist and Brain Guide, "
            text "Dr. Kevin Weiner, as he explores the superpowers of super minds. "
            a "BIO", class: 'link-copy', "data-reveal-id" => "bioModal-5"
          }
          modal('bioModal-5', 'Dr. Kevin Weiner', 'kevin-bio.jpg') {
            "Kevin is a neuroscientist at Stanford University. Kevin has been scanning
brains since he was 19. He received his undergraduate degree from Princeton University in
Psychology and Neuroscience. While at Princeton, he also studied poetry with Linda Gregg.
He received his PhD at Stanford University. Kevin is straight outta the Pine Barrens
(home of the Jersey Devil) in the back woods of New Jersey. Growing up with 15 dogs and
30 cats, Kevin often thinks that animals are smarter than we think! He is your brain
guide!"
          }
        }
      }
    }


    row(class: 'white-container__small medium-11 medium-centered') {
      column('small-12 mobile-padding') {
        h1 "The brain you have is not the brain you are stuck with!"
      }
    }


    row(class: 'medium-11 medium-centered mobile-padding') {
      column('small-12 medium-7 large-7') {
        div(class: 'flex-video small-margin') {
          div(id: "lorne_player")
        }
        div {
          a "Lorne Lanning", class: 'link-copy__small', "data-reveal-id" => "bioModal-1"
          p "Gaming Guru", class: 'body-caption'
        }
        modal('bioModal-1', 'Lorne Lanning', 'kevin-and-lorne.jpg') {
          "Lorne is the creator of Oddworld, one of the breakthrough narrative game
universes and is one of the leading game designers in the world. His work as a trained
painter in New York and animator in Hollywood make him a true hybrid original."
        }
      }

      column('small-12 medium-5 large-5 mobile-padding') {
        h2 "Inspired to know your own mind?", class: 'body-title'
        p "To find out what your brain is good at, take the mymntrPROFILE QUIZ.", class: 'body-copy'

        render partial: "take_action_button"
        p "#{count} people have already!"

        p(class: 'body-copy') {
          br
          text "Have you checked out the "
          link_to 'lingoDECODER', decoder_path, class: 'link-copy'
          text "? It's here to help you understand the lingo."
        }
      }
    }

    row(class: 'white-container medium-11 medium-centered variable-padding') {
      column('small-12 medium-4 large-4') {
        div(class: 'flex-video small-margin') {
          div(id: "monica_player")
        }
        div {
          a "Monica Thieu", class: 'link-copy__small', "data-reveal-id" => "bioModal-2"
          p "Jeopardy Winner + Neuroscience Graduate", class: 'body-caption'
        }
        modal('bioModal-2', 'Monica Thieu', 'monica-and-KW.jpg') {
          "Monica is a full-time neuroscience researcher at Stanford. She is the youngest
college Jeopardy winner, and \"melted the buzzer\" so well that her winnings helped pay
for her college degree."
        }
      }

      column('small-12 medium-4 large-4 variable-padding') {
        div(class: 'flex-video small-margin') {
          div(id: "wallace_player")
        }
        div {
          a "J Nichols", class: 'link-copy__small', "data-reveal-id" => "bioModal-3"
          p "Ocean Hero and Best-Selling Author", class: 'body-caption'
        }
        modal('bioModal-3', 'J Nichols', 'J-and-KW.jpg') {
          "Dr. Wallace J. Nichols is the best-selling author of Blue Mind. As a marine
biologist, explorer, and advocate, he is considered the “Cousteau” of our time. Embracing
his role as both scientist and advocate, J has helped bring endangered sea turtles back
from the brink, protected special places, created international advocacy movements, and
built a burgeoning global discussion on how healthy, wild waters positively impact the
brain."
        }
      }

      column('small-12 medium-4 large-4 variable-padding') {
        div(class: 'flex-video small-margin') {
          div(id: "nathalia_player")
        }
        div {
          a "Nathalia Scherer", class: 'link-copy__small', "data-reveal-id" => "bioModal-4"
          p "Dalai Lama Fellow", class: 'body-caption'
        }
        modal('bioModal-4', 'Nathalia Scherer', 'nathalia-and-kev.jpg') {
          "Nathalia is a Dalai Lama Fellow, and part of their compassionate leadership
training program. She trained as an engineer, and has also studied dance and languages.
Currently, Nathalia is head of Global Relationships for International Connector, an
organization that creates solutions that include and engage Millennials."
        }
      }
    }
  end

  def modal(id, name, img_path, &block)
    div(:id => id, :class => "reveal-modal", "data-reveal" => "", "aria-labelledby" =>
        "modalTitle", "aria-hidden" => "true", "role" => "dialog") {
      h2 name, id: 'modalTitle'
      hr
      div(class: 'small-12 medium-3 large-2 columns') {
        image_tag(img_path)
      }
      div(class: 'small-12 medium-9 large-10 columns') {
        p block.call, class: 'body-copy'
      }
      a "x", class: 'close-reveal-modal'
    }
  end
end
