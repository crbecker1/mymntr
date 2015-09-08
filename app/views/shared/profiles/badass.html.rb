class Views::Shared::Profiles::Badass < Views::Base
  def content
    strong "Bad-*ss-Brain!", class: 'orange-title'
    hr
    p "You have that inner swagger that is its own power, though it wasn't always
easy. When your pod dropped you off on earth, you didn't even speak our language, and
you felt like an alien in crazy-land. You've always seen where the broken parts of the
world are, and using your laser-like brain, you've invented new ways to work, be, see,
and do. Your brain is so flexible, 'Plastic Fantastic' doesn't
even cover it: you simply bend, and never break. People make tee shirts with pictures of
your brain on it... watch out!"
    p {
      text "In many ways, you are like J. Nichols from our video with Dr. Kevin Weiner.
Some of J.‘s powers are self-mentoring, being a silent mentor, and Brain Changer! "
      link_to "Watch the video with J. and Kevin", "//www.youtube.com/watch?v=Hh7cbTmYrwI", target: "_blank",
        class: "link-copy", onclick: "analytics.track
('video/play/wallace_player/profile')"
      text " to remind yourself how great a brain you have."
    }
  end
end