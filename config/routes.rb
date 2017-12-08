Rails.application.routes.draw do

  devise_for :users
  #get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #root to: "home#index"

  root 'welcome#anasayfa'
  #get 'yonetim', to: 'welcome#yonetim'

  scope(path_names: {new: 'yeni', edit: 'değiştermek'}) do
    resources :articles,  path: 'blog'
  end

  scope(path_names: {new: 'yeni', edit: 'değiştermek'}) do
    resources :galeris,  path: 'galeri'
  end

  #root 'galeris#index'
  #resources :galeris

  #get 'iletisim/index'
  get 'iletisim', to: 'iletisim#index'

  #get 'duyurular/index'
  #get 'duyurular', to: 'duyurular#index'

  scope(path_names: {new: 'yeni', edit: 'değiştermek'}) do
    resources :duyurulars,  path: 'duyurular'
  end

  scope(path_names: {new: 'yeni', edit: 'değiştermek'}) do
    resources :yonetims,  path: 'yönetim'
  end

end
