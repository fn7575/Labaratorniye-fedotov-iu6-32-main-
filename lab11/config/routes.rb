Rails.application.routes.draw do
  get 'calc/new'
  get 'calc/view'
  root 'calc#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
