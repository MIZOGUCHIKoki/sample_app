Rails.application.routes.draw do
  # static_pages はコントローラ名
  # roots / root （ルートと呼ぶ）
  # routes / route （ラウツと呼ぶ）
  
  # GET / => static_pages#home
  root "static_pages#home" # root -> Home

  # Get /static_pages/home => static_pages#home
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'

  # GET /about => static_pages#about
end
