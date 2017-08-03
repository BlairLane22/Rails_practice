Rails.application.routes.draw do
  get 'mailer/index'

  get "/blog", to: "blog#index"

  root 'firsts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
