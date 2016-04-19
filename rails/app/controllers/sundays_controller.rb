class SundaysController < ApplicationController
  def index
    #render json: Sunday.all
    #@customers = Customer.all.limit(10)
    @sundays = Sunday.all.limit(10)
  end
  def show
    render json: Sunday.find(params[:id])
  end
end
