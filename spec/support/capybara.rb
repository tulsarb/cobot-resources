require 'capybara/poltergeist'

Capybara.configure do |c|
  c.always_include_port = true
  c.javascript_driver = :poltergeist
end

