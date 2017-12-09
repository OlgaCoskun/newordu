Rails.application.routes.draw do

  devise_for :users

  root 'welcome#anasayfa'

  scope(path_names: {new: 'yeni', edit: 'değiştermek'}) do
    resources :articles,  path: 'blog'
  end

  scope(path_names: {new: 'yeni', edit: 'değiştermek'}) do
    resources :galeris,  path: 'galeri'
  end

  get 'iletisim', to: 'iletisim#index'

  scope(path_names: {new: 'yeni', edit: 'değiştermek'}) do
    resources :duyurulars,  path: 'duyurular'
  end

  scope(path_names: {new: 'yeni', edit: 'değiştermek'}) do
    resources :yonetims,  path: 'yönetim'
  end

end
