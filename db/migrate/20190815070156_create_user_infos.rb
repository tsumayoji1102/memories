class CreateUserInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_infos do |t|
      t.string :email_address
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :string
      t.string :account_id
      t.integer :address_number
      t.string :prefecture
      t.string :city
      t.string :string
      t.string :building

      t.timestamps
    end
  end
end
