Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "public#home"
  get '/user', to: 'user#pageuser'
  get '/myprofile', to: 'user#profile'
  get '/myprofile/:id/edit', to: 'user#edit_profile'
  get '/startgame', to: 'user#gameplay'
  patch '/myprofile/:id', to: 'user#update_profile'
end
