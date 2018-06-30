Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  root to: 'pages#home'

  resources :projects, except: [:show] do
    # when you see projects/sort do this instead
    put :sort, on: :collection
  end

  get 'project/:id', to: 'projects#show', as: 'project_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'tech-news', to: 'pages#tech_news'

  resources :blogs do
    member do 
      get :toggle_status
    end
  end

end
