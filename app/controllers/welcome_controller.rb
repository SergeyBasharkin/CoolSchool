class WelcomeController < ApplicationController
  def index
    @welcome="heroku"
    @note=Note.new
  end
end
