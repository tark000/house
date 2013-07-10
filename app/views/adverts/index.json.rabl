collection @adverts
attributes :id,  :area, :slug, :category_id, :operation_type_id
node(:price){|advert| number_to_currency(advert.all_price, unit: "грн.",format: "%n %u")}
node(:image) { |advert| advert.image.medium.url }
node(:category, :if => lambda{|advert| advert.category.present? }) do |advert|
    advert.category.name
end
node(:operation) {|advert| advert.operation_type.name}
