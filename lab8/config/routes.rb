Rails.application.routes.draw do
  root 'main#input'
  get 'main/input'
  get 'main/view'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
