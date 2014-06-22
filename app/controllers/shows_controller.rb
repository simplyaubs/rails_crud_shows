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

  private
  def show_params
    params.require(:show).permit(:name, :day)
  end

end