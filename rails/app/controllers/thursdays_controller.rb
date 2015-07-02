class ThursdaysController < ApplicationController
  def index
    render json: Thursday.all
  end
end
