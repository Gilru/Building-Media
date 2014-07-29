Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'

  get "/users/informations" => "users#index"

  devise_for :users
  get 'pages/home'
  root "pages#home"


#=======================ERROR BEGINNING==========================
  %w( 404 422 500 ).each do |code|
    get code, :to => "pages#show", :code => code
  end
#=======================ERROR END===============================


end
