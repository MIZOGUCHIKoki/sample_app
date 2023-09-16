Rails.application.routes.draw do
  # get 'users/new'
  # static_pages はコントローラ名
  # roots / root （ルートと呼ぶ）
  # routes / route （ラウツと呼ぶ）
  
  # GET / => static_pages#home
  root "static_pages#home" # root -> Home

  # Get /static_pages/home => static_pages#home
  # get 'static_pages/home'
  # get 'static_pages/help'
  # get 'static_pages/about'
  # get 'static_pages/contact'

  # GET /about => static_pages#about

  get "/help", to: "static_pages#help"
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
  get "/signup", to: "users#new"
end
