class LessonsController < ApplicationController
	before_action :set_note
	
	before_action :authenticate_user!
  	def index
  		@lessons=Lesson.all
  		if current_user.role=="student"
  			@my_lessons=current_user.stud_lessons
  		else
  			@my_lessons=current_user.teach_lessons	
  		end	
  	end

  	private
  		def set_note
  			@note=Note.new
  		end	
end
