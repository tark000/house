collection @adverts
attributes :id,  :area, :slug
node(:price){|advert| number_to_currency(advert.all_price, unit: "грн.",format: "%n %u")}
node(:image) { |advert| advert.image.medium.url }
node(:category) {|advert| advert.category.name}
node(:operation) {|advert| advert.operation_type.name}
