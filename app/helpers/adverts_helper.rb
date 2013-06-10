module AdvertsHelper
  def category
    @c=[]
    Category.order(:title).each do |c|
      @c << [c.title, c.id]
    end
    return @c
  end

  def operation
    @o=[]
    OperationType.order(:title).each do |o|
      @o << [o.title, o.id]
    end
    return @o
  end

  def region
    @r=[]
    Region.order(:title).each do |r|
      @r << [r.title, r.id]
    end
    return @r
  end

  def city
    @c=[]
    City.order(:title).each do |c|
      @c << [c.title, c.id]
    end
    return @c
  end
end
