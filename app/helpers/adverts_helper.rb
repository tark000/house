module AdvertsHelper
  def category
    @c=[]
    Category.order(:name).each do |c|
      @c << [c.title, c.id]
    end
    return @c
  end

  def operation
    @o=[]
    OperationType.order(:name).each do |o|
      @o << [o.title, o.id]
    end
    return @o
  end

  def region
    @r=[]
    Region.order(:name).each do |r|
      @r << [r.title, r.id]
    end
    return @r
  end

  def city
    @c=[]
    City.order(:name).each do |c|
      @c << [c.title, c.id]
    end
    return @c
  end

  ############################3
  def advert_for_hotel_count
    count = Advert.search_by_type(7).count()
    count
  end

  def advert_for_living_count
    count = Advert.search_by_type(5).count()
    count
  end

  def advert_for_houses_count
    count = Advert.search_by_type(6).count()
    count
  end

  def advert_for_office_count
    count = Advert.search_by_type(1).count()
    count
  end

  def advert_for_not_living_count
    count = Advert.search_by_type(2).count()
    count
  end

  def advert_for_market_count
    count = Advert.search_by_type(3).count()
    count
  end

  def advert_for_storage_count
    count = Advert.search_by_type(4).count()
    count
  end

  def advert_for_builds_count
    count = Advert.search_by_type(8).count()
    count
  end

  def static_map_for
    params = {
        :center => [50.4501, 50.4501].join(","),
        :zoom => 10,
        :size => "300x300",
        :markers => [50.4501, 50.4501].join(","),
        :sensor => false
    }

    query_string =  params.map{|k,v| "#{k}=#{v}"}.join("&")
    image_tag "http://maps.googleapis.com/maps/api/staticmap?#{query_string}"
  end

  def store_latest_pages_visited
    return unless request.get?
    return if request.xhr?

    session[:latest_pages_visited] ||= []
    session[:latest_pages_visited] << request.path_parameters
    session[:latest_pages_visited].delete_at 0 if session[:latest_pages_visited].size == 6
  end

end
