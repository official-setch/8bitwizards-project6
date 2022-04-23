Rails.application.routes.draw do
  get 'sessions/new'
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  #get 'evals/index'
  #get 'projects/complete'
  post 'surveys/index' => 'surveys#create'
  post 'evals/complete' => 'evals#create'
  post 'evals/index' => 'evals#create'
  
  get 'complete/:id' => 'evals#complete'
  #get 'evals/display' => 'evals#display'
  post 'complete/:id' => 'evals#create'
  get 'evals/display/:id' => 'evals#display'
  
  resources :users
  resources :teams
  resources :team_memberships
  resources :projects
  resources :evals
  
end
