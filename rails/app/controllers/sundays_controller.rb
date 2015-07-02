class SundaysController < ApplicationController
  def index
    render json: Sunday.all
  end
end
