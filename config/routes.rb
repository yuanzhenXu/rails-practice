Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'

  get 'home/welcome'

  get 'home/about'

  get 'home/contact'

  resources :products do
    resources :variants
    collection do
      get :top # 排行榜功能
    end
    member do
      post :buy #添加到购物车
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
