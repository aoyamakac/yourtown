Rails.application.routes.draw do



  root 'towns#top'
  get 'towns/new' => 'towns#new'
  get 'towns/:region' => 'towns#index'
  resources :towns, only:[ :create, :show, :index, :destroy]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html




end
