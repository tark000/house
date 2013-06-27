collection @adverts
attributes :id, :title, :longitude, :latitude, :all_price, :area,  :category
node(:image) { |advert| advert.image.medium.url }
node(:image) { |advert| advert.image.medium.url }
node(:category) {|advert| advert.category.name}
node(:operation) {|advert| advert.operation_type.name}