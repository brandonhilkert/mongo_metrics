MongoMetrics::Engine.routes.draw do
  root to: "mongo_metrics/metrics#index"
  resources :metrics, only: [:index]
end