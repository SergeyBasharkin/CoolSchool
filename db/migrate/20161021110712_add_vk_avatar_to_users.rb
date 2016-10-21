class AddVkAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :users, :vk_avatar, :string
  end
end
