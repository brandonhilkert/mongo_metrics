require "mongo_mapper"
require "active_support/notifications"
require "mongo_metrics/version"
require "mongo_metrics/engine"
require "mongo_metrics/metric"

MongoMapper.database = "mongo_metrics-#{Rails.env}"

ActiveSupport::Notifications.subscribe /^mongo\./ do |*args|
  MongoMetrics::Metric.store!(args)
end

module MongoMetrics
end
