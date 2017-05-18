# frozen_string_literal: true
RSpec.configure do |config|
  config.use_transactional_fixtures = false

  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do |example|
    DatabaseCleaner.strategy = if example.metadata[:js] || example.metadata[:with_db_transactions]
                                 :truncation
                               else
                                 :transaction
    end
    DatabaseCleaner.start
  end

  config.append_after(:each) do
    DatabaseCleaner.clean
  end
end
