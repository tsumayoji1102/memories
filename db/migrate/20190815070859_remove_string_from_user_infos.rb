class RemoveStringFromUserInfos < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_infos, :string, :string
  end
end
