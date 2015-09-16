if Rails.env.development?
  DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.clean
end

FactoryGirl.create_list :host, 30000
