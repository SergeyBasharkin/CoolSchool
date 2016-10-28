class ChangeLessonsColumn < ActiveRecord::Migration
  def change
  	change_column :lessons, :date, :timestamp
  end
end
