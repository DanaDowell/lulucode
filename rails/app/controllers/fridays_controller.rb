class FridaysController < ApplicationController
  def index
    render json: Friday.all
  end
end
