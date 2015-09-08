class Views::Layouts::Raw < Views::Base
  def content
    doctype!
    html(:lang => "en") {
      head {
        meta(:content => "text/html; charset=UTF-8", "http-equiv" => "Content-Type")
        meta(:charset => "utf-8")
        meta(:content => "width=device-width, initial-scale=1.0", :name => "viewport")
        meta(:content => Rails.application.config.project_description, :name => "description")
        meta(:content => asset_url('mymntr-hero.jpg'), :name => "og:image")

        title(content_for?(:title) ? yield(:title) : Rails.application.config.project_name)

        stylesheet_link_tag 'application', media: 'all'
        stylesheet_link_tag '//fonts.googleapis.com/css?family=Roboto:400,300,500,700'
        javascript_include_tag 'vendor/modernizr'
        javascript_include_tag 'application'
        javascript_include_tag 'feedbacklite'
        javascript_include_tag 'https://www.youtube.com/iframe_api'
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
                li(class: 'no-transform') {
                  a(href: decoder_path) {
                    text "lingoDECODER"
                  }
                }
                li {
                  a(href: new_quiz_path) {
                    text "TAKE QUIZ"
                  }
                }
                li {
                  a(onclick: "$('#feedbacklite img').click()") {
                    text "CONTACT"
                  }
                }
                if current_user
                  li(:class => "has-dropdown") {
                    a {
                      i(class: "fi-torso")
                      text "Account"
                    }
                    ul(:class => "dropdown") {
                      if logged_in?
                        if policy(:application).admin?
                          li { link_to 'Admin', admin_path }
                        end

                        li {
                          link_to 'Profile', edit_account_path(current_user)
                        }
                        li {
                          link_to 'Results', my_account_path
                        }
                        li {
                          link_to 'Log out', session_path, method: :delete
                        }
                      end
                    }
                  }
                else
                  li {
                    a(href: new_session_path) {
                      text "SIGN IN"
                    }
                  }
                end
              }
            }
          }

          flash.each do |name, msg|
            div("aria-labelledby" => "flash-msg-#{name}", "aria-role" => "dialog", :class => "alert-box flash-msg #{name}", "data-alert" => "") {
              div(msg, :id => "flash-msg-#{name}")
              a("×", :class => "close", :href => "#")
            }
          end
        }

        content_for?(:body) ? yield(:body) : yield

        footer {
          div(class: 'row small-blue-container blue-container large-centered large-12
full-width text-center') {
            div(class: 'small-12 medium-4 large-4 columns') {
              i(class: 'fi-map')
              p 'Built in San Francisco, California'
            }
            div(class: 'small-12 medium-4 large-4 columns') {
              i(class: 'fi-telephone')
              p '1-415-516-4186'
            }
            div(class: 'small-12 medium-4 large-4 columns') {
              i(class: 'fi-mail')
              p 'info@mymntr.com'
            }
            div(class: 'small-12 medium-12 large-12 columns') {
              p(class: 'body-caption text-center') {
                text raw "&#169;"
                text "SM+ART #{Time.now.year}. All Rights Reserved."
              }
            }
          }
        }
      }
    }
  end
end
