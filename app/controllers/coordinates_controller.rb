class CoordinatesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @coordinates = Coordinate.all
  end

  def new
    @coordinate = Coordinate.new
  end

  def create
    @coordinate = Coordinate.new(coordinate_params)
    if @coordinate.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @coordinate = Coordinate.find(params[:id])
    @comment = Comment.new
    @comments = @coordinate.comments
  end

  def edit
    @coordinate = Coordinate.find(params[:id])
    unless current_user == @coordinate.user
      redirect_to root_path
    end
  end

  def update
    @coordinate = Coordinate.find(params[:id])
    if @coordinate.update(coordinate_params)
      redirect_to coordinate_path(@coordinate)
    else
      render :edit
    end
  end

  def destroy
    oordinate = Coordinate.find(params[:id])
    oordinate.destroy
    redirect_to root_path
  end

  private

  def coordinate_params
    params.require(:coordinate).permit(:title,  :concept, :style_id, :image).merge(user_id: current_user.id)
  end
end
