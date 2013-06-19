class Api::AdvertImagesController < Api::BaseController

  before_filter :find_advert

  def index
    respond_with :api, @images = @advert.advert_images
  end


  private

  def find_advert
    #binding.pry
    @advert = Advert.find(params[:advert_id])
  end
end