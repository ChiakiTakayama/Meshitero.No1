Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "homes#top"
get'top' => 'homes#top'

resources :post_images, only: [:new, :create, :index, :show]
# アプリケーションを完成させよう1-1章の「Listsコントローラを作成する」と
# 〃1-7章のルーティングを簡単に記述するに
# 〃2-9章のresourcesメソッドのオプション
# 2-10章で:createを追加したときになぜかpost_image#indexに繋がった。
# 次の11章でリンクが用意されるらしいが・・・

get "/homes/about" => "homes#about", as: "about"
end
