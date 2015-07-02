class SaturdaysController < ApplicationController
  def index
    render json: Saturday.all
  end
end
