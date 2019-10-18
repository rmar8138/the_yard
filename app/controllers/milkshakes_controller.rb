class MilkshakesController < ApplicationController
  def index
    if params[:search] && !params[:search].empty?
      @milkshakes = Milkshake.where(name: params[:search])
    else
      @milkshakes = Milkshake.all
    end
  end

  def show
    @milkshake = Milkshake.find(params[:id])
  end

  def new
    @milkshake = Milkshake.new
  end

  def create
    # @milkshake = milkshake_params
    # Milkshake.create(@milkshake)
  end

  private

  def milkshake_params
    params.require(:milkshake).permit(:name, :description, :price)
  end
end