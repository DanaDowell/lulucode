class CountiesController < ApplicationController
  def index
    render json: County.all
  end
end
