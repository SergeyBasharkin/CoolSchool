class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.date :date
      t.string :subject
      t.integer :teacher_id, index: true
      t.integer :student_id, index: true

      t.timestamps null: false
    end
  end
end
