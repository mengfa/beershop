class WelcomeController < ApplicationController
  def index
    flash[:notice] = "nice"
  end
end
