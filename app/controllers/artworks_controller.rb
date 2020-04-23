class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
    @n = 900
    @i = -1
    sql_query = " \
        artworks.title ILIKE :query \
        OR artworks.category ILIKE :query \
      "

    if params[:query].present?
      @artworks = @artworks.where(sql_query, query: "%#{params[:query]}%")
    else
      @artworks
    end
  end

  def new
    @artwork = Artwork.new
  end

  def show
    @artwork = Artwork.find(params[:id])
  end

  def create
    @artwork = Artwork.new(artwork_params)
    if @artwork.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @artwork = Artwork.find(params[:id])
  end

  def update
    @artwork = Artwork.find(params[:id])
    if @artwork.update(artwork_params)
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy
    redirect_to dashboard_path
  end

  private

  def artwork_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:artwork).permit(:title, :category, :year, :description)
  end
end
