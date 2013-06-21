object @advert
attributes :id, :title, :longitude, :latitude, :price, :area, :operation_type, :image, :category
node(:images) { |advert| advert.advert_images }

