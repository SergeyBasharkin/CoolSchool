class WelcomeController < ApplicationController
  def index
    @note=Note.new
    if session[:note_errors]
      session[:note_errors].each {|error, error_message| @note.errors.add error, error_message}
      session.delete :note_errors
    end
    @teachers=User.where(role: "teacher")
    @posts=Post.all
  end
end
