Rails.application.routes.draw do
  # static_pages はコントローラ名
  # roots / root （ルートと呼ぶ）
  # routes / route （ラウツと呼ぶ）
  get 'static_pages/home'
  get 'static_pages/help'
  root "hello#index"
end
