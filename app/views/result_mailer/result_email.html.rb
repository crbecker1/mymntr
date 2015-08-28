class Views::ResultMailer::ResultEmail < Views::EmailBase
  needs :result

  def content
    div {
      div("Result: #{result.to_s}")
    }
  end
end