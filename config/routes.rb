Rails.application.routes.draw do
  resources :teachers, only: [:index, :show, :new, :crete, :edit, :update]
  get "categories/:category_id/teachers", to: "teachers#index", as: :category_teachers
  devise_for :users
  root to: 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "profiles", to: "profiles#show"
end
