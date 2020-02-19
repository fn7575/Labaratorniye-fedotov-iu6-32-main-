Rails.application.routes.draw do
  get 'index/input'
  root 'index#input'
  get ':m', to: 'index#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
