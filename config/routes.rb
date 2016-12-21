Rails.application.routes.draw do

  resources :databases do
    resources :tables do
      resources :columns
    end
  end
  root 'databases#index'
  get 'tables/superlist' => 'tables#superlist'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
