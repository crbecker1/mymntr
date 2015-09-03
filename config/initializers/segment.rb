if Rails.env.production?
  @@analytics = Segment::Analytics.new({
      write_key: 'VTGQmBiOCca3UQJOWJMePBJQjh6dvMXR'
    })
else
  @@analytics = Segment::Analytics.new({
      write_key: '2ACs4AijtXCBJEI6ahIBTQoS67BG1BON'
    })
end

