class AddVkColumnToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :vk, :string
  end
end
