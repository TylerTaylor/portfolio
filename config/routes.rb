Rails.application.routes.draw do

  root to: 'pages#home'

  resources :projects, except: [:show]

  get 'project/:id', to: 'projects#show', as: 'project_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs

end
