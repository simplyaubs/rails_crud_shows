class ShowsController < ApplicationController

  def index
    @show = Show.new
    @shows = Show.all
  end

  def create
    @show = Show.new(show_params)
    if @show.save

      redirect_to shows_path
    else
      render :index
    end
  end

  def show
    @show = Show.find(params[:id])
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    @show.update_attributes!(show_params)

    redirect_to shows_path
  end

  private
  def show_params
    params.require(:show).permit(:name, :day)
  end

end