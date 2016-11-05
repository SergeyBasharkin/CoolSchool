class AddVkImageColumnToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :vk_image, :string
  end
end
