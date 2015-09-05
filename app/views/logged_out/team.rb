class Views::LoggedOut::Team < Views::Base
  def content
    row(class: 'screaming-hero hero-image full-width small-12') {

    }
    row(class: 'small-blue-container show-for-small-only') {
      column('small-9 small-centered text-center') {
        p "be inspired to know your own mind", class: 'heading-style'
      }
    }

    row(class: 'white-container full-width body-copy') {
      column('small-12 medium-9 medium-centered large-7 large-centered') {
        h1 "SM+ART: THE COMPANY BEHIND MYMNTR", class: 'heading-caps'
        h2 "Our Intention at SM+ART", class: 'body-title__color'
        p "We want to make the living human brain as fun and cool as the apple that made Apple, the red envelope that made Netflix, and that sleek electricity that made Tesla, Tesla. SM+ART is committed to bringing the art+science of brainpower to everyone. Everyone. We do so by packaging, presenting and sharing applied neuroscience in a way that makes it culturally relevant, fun, and useful for our everyday lives.", class: 'body-copy'

        br

        h2 "SM+ART Mission", class: 'body-title__color'
        p "We want to change the way we educate, collaborate, and engage in social impact. We do so by delivering products that combine the best of tech, applied neuroscience, media, creativity and cultural narratives to help people grow, find, and put into action, the best version of themselves in their everyday lives and at work.", class: 'body-copy'

        p "Our team is ready to make change. Join us!", class: 'body-copy'
      }
    }


    row(class: 'blue-container full-width body-copy') {
      column('small-12 medium-10 medium-centered large-8 large-centered') {
        column('small-7 text-center small-centered medium-12') {
          h1 "OUR TEAM", class: 'heading-style bottom-spacer__small'
          ul(class: 'small-block-grid-1 medium-block-grid-5') {
            face(
              'gaynor-sc.png',
              'Gaynor Strachan Chun',
              'Founder/CEO',
              'https://www.linkedin.com/pub/gaynor-strachan-chun/4/547/823',
              'https://www.facebook.com/gaynorsc?fref=ts',
              'https://plus.google.com/116968050729472064110/posts',
              nil
            )
            face(
              'sara-k.png',
              'Sarah Kornfeld',
              'Founder/CCO',
              'https://www.linkedin.com/in/sarahkornfeld',
              'https://www.facebook.com/sarah.kornfeld?fref=ts',
              'https://plus.google.com/+SarahKornfeldInventio/posts',
              nil
            )
            face(
              'chris-b.png',
              'Chris R. Becker',
              'Lead Product/UX Design',
              'https://www.linkedin.com/in/chrisrbecker',
              nil,
              'https://plus.google.com/111014451815052716472/posts',
              'https://twitter.com/@cbecker'
            )
            face(
              'dr-kevin.png',
              'Dr. Kevin Weiner',
              'Neuroscience Interviewer',
              'https://www.linkedin.com/pub/kevin-weiner/93/839/674',
              nil, nil, nil
            )
            face(
              'dr-melina.png',
              'Dr. Melina Uncapher',
              'Neuroscience Advisor',
              'https://www.linkedin.com/in/melinauncapher',
              nil, nil, nil
            )
          }
        }
      }
    }

    row(class: 'white-container full-width body-copy') {
      column('small-12 medium-9 medium-centered large-7 large-centered') {
        h1 "Special thanks to:", class: 'heading-caps'
        div(class: 'body-copy') {
          ul {
            [
              'Citizen Code',
              'Aaron Lucich, In Process Media',
              'Lorne Lanning',
              'Monica Thieu',
              'Dr. Wallace J. Nichols',
              'Nathalia Scherer',
              'Dr. M.A. Greenstein'
            ].each do |thanks|
              li { text thanks }
            end
          }
        }
      }
    }
  end

  def face(image_path, name, title, linkedin_path, facebook_path, google_path,
    twitter_path)
    li {
      image_tag(image_path, class: 'circle-border')
      div(class: 'body-copy__small text-center') {
        strong name
      }
      div(class: 'body-copy__small-details text-center') {
        text title

      }
      div(class: 'row') {
        a(href: linkedin_path, target: '_blank') {
          i(class: 'fi-social-linkedin large')
        }
        if facebook_path
          a(href: facebook_path, target: '_blank') {
            i(class: 'fi-social-facebook large')
          }
        end
        if google_path
          a(href: google_path, target: '_blank') {
            i(class: 'fi-social-google-plus large')
          }
        end
        if twitter_path
          a(href: google_path, target: '_blank') {
            i(class: 'fi-social-twitter large')
          }
        end
      }
    }
  end
end