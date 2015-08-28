class Views::LoggedOut::Index < Views::Base
  needs :count

  def content
    row(class:'screaming-hero hero-image full-width small-12') {

    }
    row(class:'small-blue-container show-for-small-only') {
      column('small-9 small-centered text-center'){
        p "be inspired to know your own mind", class:'heading-style'
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
        p "Hi, you're invited to build your own culturally relevant user guide for YOUR brain...", class:'body-title'
        ul
          li "– A new way to find out what’s going on up there in your own mixture of cells."
          li "– A new way to know how your circuits can amp up your life + work."
          li "– Oh. It might help you improve your world by changing how you view your world with the brain in mind."
        br
        p "We’re making mymntr with media-makers, change-agents, and neuroscientists -- all for you!", class: 'body-copy'
      }
    }

    row(class:'white-container text-center') {
      column('small-12 medium-9 medium-centered large-7 large-centered') {
        render partial: "take_action_button"
        p "#{count} people have already!"
      }
    }
    javascript "analytics.track('acquisition/visit')"
  end
end
