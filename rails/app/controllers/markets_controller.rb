class MarketsController < ApplicationController

  def index
    render json: Market.all
  end
  
  def show
    render json: Market.find(params[:id])
  end
  
end
