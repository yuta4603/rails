Rails.application.routes.draw do
  devise_for :users
  root        'tweets#index'
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
#doとendで挟むことで中の記述をネスト(ある命令群の中に入れ子構造で別の命令群を記述する方法)することができる

 # get         'tweets'                =>        'tweets#index'
 # root        'tweets#index'
 # get         'tweets/new'            =>        'tweets#new'
 # post        'tweets'                =>        'tweets#create'
 # delete      'tweets/:id'            =>        'tweets#destroy'
 # patch       'tweets/:id'            =>        'tweets#update'
 # get         'tweets/:id/edit'       =>        'tweets#edit'
 # get         'users/:id'             =>        'users#show'
 # get         'tweets/:id'            =>        'tweets#show'