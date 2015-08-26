class Views::Layouts::Raw < Views::Base
  def content
    doctype!
    html(:lang => "en") {
      head {
        meta(:content => "text/html; charset=UTF-8", "http-equiv" => "Content-Type")
        meta(:charset => "utf-8")
        meta(:content => "width=device-width, initial-scale=1.0", :name => "viewport")
        meta(:content => Rails.application.config.project_description, :name => "description")

        title(content_for?(:title) ? yield(:title) : Rails.application.config.project_name)

        stylesheet_link_tag 'application', media: 'all'
        stylesheet_link_tag '//fonts.googleapis.com/css?family=Roboto:400,300,500,700'
        javascript_include_tag 'vendor/modernizr'
        javascript_include_tag 'application'
        javascript_include_tag 'feedbacklite'
        if Airbrake.configuration.project_id && Airbrake.configuration.api_key
          javascript_include_tag "airbrake-shim",
            "data-airbrake-project-id" => Airbrake.configuration.project_id,
            "data-airbrake-project-key" => Airbrake.configuration.api_key,
            "data-airbrake-environment-name" => Airbrake.configuration.environment_name
        end
        csrf_meta_tags
      }

      body(class: "#{controller_name}-#{action_name}") {
        div(class: "contain-to-grid") {
          nav(:class => "top-bar", "data-topbar" => "", :role => "navigation") {
            ul(:class => "title-area") {
              li(:class => "name") {
                h1 {
                  a(:href => "/") {
                    text "MYMNTR"
                  }
                }
              }

              li(:class => "toggle-topbar menu-icon") {
                a(:href => "#") {
                  span("Menu")
                }
              }
            }

            section(class: "top-bar-section") {
              ul(class: "right") {
                li {
                  a(href: about_path) {
                    text "ABOUT"
                  }
                }
                li {
                  a(href: team_path) {
                    text "OUR TEAM"
                  }
                }
                li {
                  a(href: contact_path) {
                    text "CONTACT"
                  }
                }
                li {
                  a(href: new_session_path) {
                    text "SIGN IN"
                  }
                }
              }
            }

            yield :navigation
          }

          flash.each do |name, msg|
            div("aria-labelledby" => "flash-msg-#{name}", "aria-role" => "dialog", :class => "alert-box flash-msg #{name}", "data-alert" => "") {
              div(msg, :id => "flash-msg-#{name}")
              a("×", :class => "close", :href => "#")
            }
          end
        }

        content_for?(:body) ? yield(:body) : yield

        if content_for?(:footer)
          footer(class: :'fat-footer') {
            yield :footer
          }
        end
      }
    }
  end
end
