require "rspec"
require "mongo_metrics"

RSpec.configure do |config|
  config.color_enabled = true

  config.after(:each) do
    MongoMetrics::Metric.delete_all
  end
end