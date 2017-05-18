# frozen_string_literal: true
require "capybara/webkit"
Capybara.javascript_driver = :webkit


# Capybara::Webkit.configure do |config|
#   config.block_unknown_urls
# end
Capybara::Webkit.configure do |config|
  config.block_url("ignore.example.com")
end

require "capybara/rspec"

require "capybara-screenshot/rspec"

# although save_and_open_page_path is deprecated in favour of save_path capybara-screenshot and capybara screw up
# with save_path somehow.
# Waiting for fixes on https://github.com/mattheworiordan/capybara-screenshot/issues/164 before hcnaging
Capybara.save_and_open_page_path = Rails.root.join("tmp/capybara").to_s
