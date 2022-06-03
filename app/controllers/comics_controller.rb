class ComicsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @comic = Comic.new
  end

  def create
    @comic = Comic.new(comic_params)
    @comic.save

    if @comic.save
      redirect_to comics_path
    else
      render :new
    end
  end

  def show
    @comic = Comic.find(params[:id])
  end

  def index
    @comics = Comic.all
    #@dc_comics = Comic.where(house: 'DC Comics')
    #@marvel_comics = Comic.where(house: 'Marvel')
    #@valiant_comics = Comic.where(house: 'Valiant')
    #@other_comics = Comic.where(house: 'Other')
  end

  def indexdc
    @comics = Comic.all
    
  end

  def indexmarvel
    @marvel_comics = Comic.where(house: 'Marvel')
  end

  def indexvaliant
    @valiant_comics = Comic.where(house: 'Valiant')
  end

  def indexother
    @other_comics = Comic.where(house: 'Other')
  end

  private

  def comic_params
    params.require(:comic).permit(:name, :illustration, :house, :serie, :collector, :price, :date)
  end

end
