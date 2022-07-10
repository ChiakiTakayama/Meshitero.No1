Rails.application.routes.draw do
devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "homes#top"
get "/homes/about" => "homes#about", as: "about"
get'top' => 'homes#top'

resources :post_images, only: [:new, :create, :index, :show, :destroy] do
 resource :favorites, only: [:create, :destroy]
# favoritesは19章で追加
 resources :post_comments, only: [:create, :destroy]
    # doとpost_commentsは18章で追加
end
resources :users, only: [:show, :edit, :update]#15章で
# アプリケーションを完成させよう1-1章の「Listsコントローラを作成する」と
# 〃1-7章のルーティングを簡単に記述するに
# 〃2-9章のresourcesメソッドのオプション
# 2-10章で:createを追加したときになぜかpost_image#indexに繋がった。
end
