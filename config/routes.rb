Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get 'welcome/home'
  root 'welcome#home'
  get '/about' => "welcome#about"
end
