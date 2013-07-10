object @advert

attributes :id, :title, :longitude, :latitude,  :area
node(:price){|advert| number_to_currency(advert.all_price, unit: "грн.",format: "%n %u")}

node(:operation) {|advert| advert.operation_type.name}
node(:image) { |advert| advert.image.big.url }

