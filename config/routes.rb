Rails.application.routes.draw do
  post '/', to: 'home#check'
  root 'home#index'
end
