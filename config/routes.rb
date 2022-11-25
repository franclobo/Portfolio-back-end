Rails.application.routes.draw do
  root to: 'api/v1/projects#index'
  namespace :api do
    namespace :v1 do
      resources :projects
    end
  end
end
