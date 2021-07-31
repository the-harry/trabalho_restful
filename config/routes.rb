Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  namespace :api, constraints: { format: 'json' } do
    namespace :v1 do
      resources :trabalhos, only: %i[index]
      resources :trabalho, only: %i[create show update destroy], controller: :trabalhos
    end
  end
end
