class Api::AdvertsController < Api::BaseController


  def show
    respond_with :api, Advert.find(params[:id])
  end

end