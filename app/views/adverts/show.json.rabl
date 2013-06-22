object @advert
attributes :id, :title, :longitude, :latitude, :all_price, :area, :operation_type, :image, :category
node(:images) { |advert| advert.advert_images }

