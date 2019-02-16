Rails.application.routes.draw do

  resources :photos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get 'towns/index' => 'towns#index'

get 'towns/new' => 'towns#new'

post 'towns/new'=> 'towns#create'

get 'towns/top' => 'towns#top'

root 'towns#top'

end
