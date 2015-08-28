class Views::LoggedOut::About < Views::Base
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

        h1 "About Mymntr", class: 'heading-style uppercase-style'

        h2 "The brain you have is not the brain you are stuck with!", class:'body-title__color'

        p "You can know it and grow it. Your brain is unique, yet each of our brains share the same basic anatomy irrespective of race, sex, or culture. We are all human and we are all continuously sharing, learning, interacting, and evolving systems of knowledge as we strive to be healthy people.", class: 'body-copy'
        p "You can change, and in doing so, you can create change by starting with knowing how your brain works. Even if you know and love your brain already – we hope we can help you love your brain more and know yourself better and support you as you make change in the world.", class: 'body-copy'
        br

        h2 "Mymntr takes you on a cultural journey infused with neuroscience.", class: 'body-title__color'

        p "We will provide you with really useful content and tools to help you get started:", class:'body-copy'
        ul
          li "1. Conversations with amazing change-agents you can watch. Be inspired to know your own mind."
          li "2. Life skills programs. Kick into them anytime."
          li "3. Profile tools, tips and tricks. Stay on your own track and share."
        br
        p "Over the next few months we will share some of what we are working on for mymntr. We really want your feedback! Want to know more? Want to help?", class: 'body-copy'
        render partial: "take_action_button"
      }
    }

  end

end