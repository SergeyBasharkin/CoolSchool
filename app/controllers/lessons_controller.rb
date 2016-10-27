class LessonsController < ApplicationController
	before_action :authenticate_user!
  	def index
  		@lessons=Lesson.all
  	end
end
