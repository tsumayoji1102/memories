class CreateUserPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :user_posts do |t|
      t.string :account_id
      t.datetime :post_date
      t.string :content
      t.string :jenre
      t.integer :favorite
      t.string :memo_picture1
      t.string :memo_picture2

      t.timestamps
    end
  end
end
