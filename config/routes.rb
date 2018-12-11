Rails.application.routes.draw do
  namespace :api do
    get 'coins/index'
    get 'coins/create'
    get 'coins/show'
    get 'coins/update'
    get 'coins/destroy'
  end
  devise_for :users
  namespace :api do
    #API ROUTES SHOULD GO HERE
  end

  #Do not place any routes below this one
  if Rails.env.production?
    get '*other', to: 'static#index'
  end
end
