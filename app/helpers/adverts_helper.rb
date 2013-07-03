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

  def advert_for_flats_count
    count = Advert.search_by_type(1).count()
    count
  end

  def advert_for_houses_count
    count = Advert.search_by_type(23).count()
    count
  end

  def advert_for_ofice_count
    count = Advert.search_by_type(24).count()
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

end
