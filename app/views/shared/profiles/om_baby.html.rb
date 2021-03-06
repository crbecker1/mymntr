class Views::Shared::Profiles::OmBaby < Views::Base
  def content
    strong "OM-Baby!", class: 'orange-title'
    hr
    p "Who knew a person who could control their mind could literally move
mountains?! When did you first know you could do that? Like, when you were a baby and
you could just go to your 'quiet place' and then, BOOM!, you'd moved a chair! Wow, you
use your inner peace to change the world. Your brain is so Zen you make serenity look
hyper! When you bring all the many broken pieces together again, without moving anything
but your peace, rock bands write anthems in your name. OM-Baby!"
    p { text "You are also a lot like Nathalia, Dalai Lama fellow and change-agent in her
conversation with Dr. Kevin Weiner. Some of her Superpowers are embodied cognition,
language skills, and being blind to negativity. Sound like you? "
    link_to 'Watch the video with Nathalia and Kevin', '//www.youtube.com/watch?v=ehQltJJehNs', class:
        'link-copy', target: '_blank', onclick: "analytics.track
('video/play/nathalia_player/profile')"
    text ' to remind yourself how great a brain you have.'
    }
  end
end