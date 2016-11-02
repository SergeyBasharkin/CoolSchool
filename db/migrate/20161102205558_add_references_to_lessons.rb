class AddReferencesToLessons < ActiveRecord::Migration
  def change
  	add_reference :lessons, :subject
  end
end
