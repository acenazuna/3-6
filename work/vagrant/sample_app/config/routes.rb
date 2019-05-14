Rails.application.routes.draw do
  get 'posts/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'top' => 'root#top'
    post 'posts' => 'posts#create'
    get 'posts' => 'posts#index'
    get 'posts/:id' => 'posts#show', as: 'post'
    # .../posts/1 や .../posts/3 に該当する
end  
