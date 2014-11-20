Rails.application.routes.draw do
  root 'projects#index'

  get 'page/about'
  get 'page/contact'

  resources :adherents
  resources :projects

end
