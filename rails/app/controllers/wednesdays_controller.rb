class WednesdaysController < ApplicationController
  def index
    render json: Wednesday.all
  end
end
