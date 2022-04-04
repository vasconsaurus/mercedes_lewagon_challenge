Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Rails.application.routes.draw do
  #   resources :museums
  # end

  get 'museums_results', to: 'museums#search', as: 'museums_results'
  # root to: 'museums#index'
end
