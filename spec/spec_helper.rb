# generate coverage analysis at /coverage/index.html
require 'simplecov'

SimpleCov.start do
  add_filter '/spec/'
end

# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|

  # rspec-expectations config
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  # rspec-mocks config
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  # for backwards compatibility
  config.shared_context_metadata_behavior = :apply_to_host_groups
end
