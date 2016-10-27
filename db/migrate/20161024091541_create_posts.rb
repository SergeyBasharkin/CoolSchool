class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :commenter
      t.string :body

      t.timestamps null: false
    end
  end
end
