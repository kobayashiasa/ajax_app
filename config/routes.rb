Rails.application.routes.draw do
  root to: 'posts#index' #編集する
  # get 'posts/new', to: 'posts#new' 削除する
  post 'posts', to: 'posts#create'
end
