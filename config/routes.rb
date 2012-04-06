MongoMetrics::Engine.routes.draw do
  resources :mongo_metrics, only: [:index]
end