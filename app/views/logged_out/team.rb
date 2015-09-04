class Views::LoggedOut::Team < Views::Base
  def content
    row(class:'screaming-hero hero-image full-width small-12') {

    }
    row(class:'small-blue-container show-for-small-only') {
      column('small-9 small-centered text-center'){
        p "be inspired to know your own mind", class:'heading-style'
      }
    }

    row(class:'white-container full-width body-copy') {
      column('small-12 medium-9 medium-centered large-7 large-centered') {
        h1 "SM+ART: THE COMPANY BEHIND MYMNTR", class: 'heading-caps'
        h2 "Our Intention at SM+ART", class:'body-title__color'
        p "We want to make the living human brain as fun and cool as the apple that made Apple, the red envelope that made Netflix, and that sleek electricity that made Tesla, Tesla. SM+ART is committed to bringing the art+science of brainpower to everyone. Everyone. We do so by packaging, presenting and sharing applied neuroscience in a way that makes it culturally relevant, fun, and useful for our everyday lives.", class:'body-copy'

        br

        h2 "SM+ART Mission", class:'body-title__color'
        p "We want to change the way we educate, collaborate, and engage in social impact. We do so by delivering products that combine the best of tech, applied neuroscience, media, creativity and cultural narratives to help people grow, find, and put into action, the best version of themselves in their everyday lives and at work.", class:'body-copy'

        p "Our team is ready to make change. Join us!", class: 'body-copy'
      }
    }


    row(class:'blue-container full-width body-copy') {
      column('small-12 medium-10 medium-centered large-8 large-centered') {
        column('small-7 text-center small-centered medium-12') {
          h1 "OUR TEAM", class: 'heading-style bottom-spacer__small'
          ul(class: 'small-block-grid-1 medium-block-grid-5') {
            li { image_tag('gaynor-sc.png', class: 'circle-border')
              p 'Gaynor Strachan Chun', class: 'body-copy__small text-center'
              p 'Founder/CEO', class: 'body-copy__small-details text-center'
            }
            li { image_tag('sara-k.png', class: 'circle-border')
              p 'Sarah Kornfeld', class: 'body-copy__small text-center'
              p 'Founder/CCO', class: 'body-copy__small-details text-center'
            }
            li { image_tag('chris-b.png', class: 'circle-border')
              p 'Chris R. Becker', class: 'body-copy__small text-center'
              p 'Lead Product/UX Design', class: 'body-copy__small-details text-center'
            }
            li { image_tag('dr-kevin.png', class: 'circle-border')
              p 'Dr. Kevin Weiner', class: 'body-copy__small text-center'
              p 'Neuroscience Interviewer', class: 'body-copy__small-details text-center'
            }
            li { image_tag('dr-melina.png', class: 'circle-border')
              p 'Dr. Melina Uncapher', class: 'body-copy__small text-center'
              p 'Neuroscience Advisor', class: 'body-copy__small-details text-center'
            }
          }
        }
      }
    }
  end
end