require "spec_helper"

describe MongoMetrics::Metric do

  it "should save any mongo query to the database" do
    payload = { "sql" => "user find" }

    ActiveSupport::Notifications.instrument "mongo.mongo", payload do
      sleep(0.001)
    end

    metric = MongoMetrics::Metric.first

    MongoMetrics::Metric.count.should == 1
    metric.name.should == "mongo.mongo"
    metric.payload.should == payload
    metric.duration.should be
    metric.instrumenter_id.should be
    metric.started_at.should be
    metric.created_at.should be
  end
end