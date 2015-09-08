class Views::Shared::Profiles::Fearless < Views::Base
  def content
    strong "Fearless Focus Freak On!", class: 'orange-title'
    hr
    p "You're brave, focused, and can handle stress in the moment to get what you
want, like, GET WHAT YOU WANT (all Caps, thank you)... and yet, you're not a total jerk.
How do you do that? Have a way of winning the prize, gathering a crowd, and breaking
records while still being a friend? Oh, you can focus like a laser beam – to the degree
that just thinking about it SO MUCH seems to make people do it? Wow, all that and people
want to have a beer with you – that is, if you're of age! Or, watch you do it!"
    p {
      text "You are also a lot like world famous game designer Lorne Lanning! Some of his
Superpowers are intense perceptual expertise, battling fear, and creating something out
of nothing! Sound like you? "
      link_to "Watch the video with Lorne and Kevin", 'https://www.youtube.com/watch?v=00q71VOOu2s', class: 'link-copy', target:
          '_blank'
      text " to remind yourself how great a brain you have."
    }
  end
end