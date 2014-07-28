Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'
  root "pages#home"
  if Rails.env.production?
    get '404', :to => 'pages#page_not_found'
    get '422', :to => 'pages#server_error'
    get '500', :to => 'pages#server_error'
  end
end
