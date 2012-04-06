class MongoMetrics::MetricsController < ApplicationController
  def index
    @metrics = MongoMetrics::Metric.all
  end
end