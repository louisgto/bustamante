class PagesController < ApplicationController
  before_action :authenticate_user!, only: :dashboard

  def home; end

  def art; end

  def workshop; end

  def dashboard
    @artworks = Artwork.all
    @messages = Message.all
  end
end
