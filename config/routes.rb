Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'folios#index'
  resources :folios, only: [:show, :index]
  namespace :admin do
    resources :folios, except: [:show]
  end
end
