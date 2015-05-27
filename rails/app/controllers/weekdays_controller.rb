class WeekdaysController < ApplicationController
  def index
    render json: Weekday.all
  end
  
  def show
    render json: Weekday.find(params[:id])
  end
  
end
