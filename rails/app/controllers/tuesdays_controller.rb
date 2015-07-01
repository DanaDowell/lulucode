class TuesdaysController < ApplicationController
  def index
    render json: Tuesday.all
  end
end
