class MongoMetricsController < ApplicationController
  def index
    @metrics = MongoMetrics::Metric.all
  end
end