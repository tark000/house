class Api::AdvertsController < Api::BaseController
  #respond_to :json, :html
  def marker(houses)
    houses.each_with_index do |house, index|
      if house.latitude.present?
        i = 0
        houses.each_with_index do |m, indx|
          if m.latitude == house.latitude && m.longitude == house.longitude
            if i>0
              house.mapaddress += " #{m.id}"
              houses.delete_at(indx)
            end
            i = i+1
          end
        end
      end
    end


    houses

  end

  def index
    @adverts = Advert.search(params[:search]).order(:title)

    @adverts = @adverts.operation_type_search(params[:operation_type]) if params[:operation_type].present?
    @adverts = @adverts.category_search(params[:category]) if params[:category].present?
    @adverts = @adverts.where(:living => params[:living])  if params[:living].present?
    @adverts = @adverts.state_search(params[:state]) if params[:state].present?
    if params[:gender] == "all"
      @adverts = @adverts.all_min_price_search(params[:min_price]) if params[:min_price].present?
      @adverts = @adverts.all_max_price_search(params[:max_price]) if params[:max_price].present?
    elsif params[:gender] == "m2"
      @adverts = @adverts.min_price_search(params[:min_price]) if params[:min_price].present?
      @adverts = @adverts.max_price_search(params[:max_price]) if params[:max_price].present?
    end

    @adverts = @adverts.min_area_search(params[:min_area])if params[:min_area].present?
    @adverts = @adverts.max_area_search(params[:max_area])if params[:max_area].present?
    @adverts = @adverts.regoin_search(params[:region_id]) if params[:region_id].present?
    @adverts = @adverts.city_search(params[:city_id]) if params[:city_id].present?

    #@adverts = @adverts.limit(params[:pageSize]).offset(params[:from])
    #binding.pry
    @adverts = @adverts.limit(15)
    #@query = request.query_string
    @query = params[:search].present? ? params[:search].to_query : ""

    respond_to do |format|
      format.js{
        render('home/search')
      }
      format.json {
        render('home/_index', :object => @adverts)
      }
    end

    #binding.pry

  end

  def search


    #binding.pry
    @ss = "aaa";
    respond_to do |format|
      format.js{
        render('home/search')
      }

    end

  end


  def show
    #respond_with :api, Advert.find(params[:id])

    @advert = Advert.find(params[:id])

    respond_to do |format|
      format.js
      format.json {
        render('home/_show', :object => @advert)
      }
    end
  end

end

