class ConcertsController < ApplicationController

  def index
    @concerts = Concert.all
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new entry_params
    @concert.save
    redirect_to action: 'index'
  end

  def show
    @concert = Concert.find params[:id]
    @comment = @concert.comments.new params[:comment]
  end

  def search_by_price
      @concerts = Concert.where("price <= ?",params[:price])
  end

  def popular_concerts
    @concerts = Concert.all
    @sorted_concerts = @concerts.sort {|a,b| b.comments.length <=> a.comments.length}
    @top_10_concerts = @sorted_concerts.first(10)
  end

  private

  def entry_params
    params.require(:concert).permit(:artist, :venue, :city_id, :date, :price, :description)
  end

end
