Rails.application.routes.draw do
  root 'logged_out#index'

  get 'about' => "logged_out#about"
  get 'team' => "logged_out#team"
  get 'contact' => "logged_out#contact"

  resources :accounts, only: [:new, :create, :edit, :update]
  resource :session, only: [:new, :create, :destroy]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :quizzes, only: [:new, :create]

  get 'my_account' => 'logged_in#landing'

  namespace :admin do
    get '/' => 'admin#index'
    resources :accounts
    resources :roles
    get '/metrics' => 'metrics#index'
  end
end
