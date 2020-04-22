class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
    @n = 900
    @i = -1
    @j = -1
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
    @artwork.update
    redirect_to artwork_path(@artwork)
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy
    redirect_to artworks_path
  end

  private

  def artwork_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:artwork).permit(:title, :category, :year, :description)
  end
end
