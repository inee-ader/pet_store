Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get '/', to: "pets#welcome"

  resources :pets

  get '/:species', to: "species#index"
  
end
