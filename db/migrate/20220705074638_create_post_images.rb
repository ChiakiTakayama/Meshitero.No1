class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    create_table :post_images do |t|
      t.string :shop_name
      t.text :caption
      t.integer :user_id
# railsを学ぼう5章 モデルとデータベースを用意しようより抜粋
      t.timestamps
    end
  end
end
