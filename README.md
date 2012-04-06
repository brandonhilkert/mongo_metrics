# MongoMetrics

Mongo Metrics helps you keep track of the queries being triggered in a Rails application.

## Installation

Add this line to your application's Gemfile:

    gem 'mongo_metrics'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongo_metrics

## Usage

Add this line to your Rails routes file:

    mount MongoMetrics::Engine, at: "/mongo_metrics"

This will cause the dashboard to be available at the following address: http://[yourdomain]/mongo_metrics

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
