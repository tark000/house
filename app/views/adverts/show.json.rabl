object @advert

attributes :id, :title, :longitude, :latitude,  :area, :advert_images
node(:price){|advert| number_to_currency(advert.all_price, unit: "грн.",format: "%n %u")}
node(:category) {|advert| advert.category.name}
node(:operation) {|advert| advert.operation_type.name}
node(:image) { |advert| advert.image.big.url }

