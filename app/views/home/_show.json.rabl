object @advert

attributes :id,  :longitude, :latitude, :house, :rooms, :description, :slug, :video
node(:price){|advert| number_to_currency(advert.all_price, unit: "грн.",format: "%n %u")}

node(:operation) {|advert| advert.operation_type.name}
node(:image) { |advert| advert.image.big.url }
node(:all_price) {|advert| advert.all_price.to_i}
node(:area){|advert| advert.area.to_i}
node(:region){|advert| advert.region.title}
node(:city){|advert| advert.city.title}
node(:district){|advert| advert.district.title}
node(:street){|advert| advert.street.title}
node(:floor){|advert| advert.floor.to_i}
node(:district){|advert| advert.district.title}
node(:category){|advert| advert.category.title}
node(:title, :if => lambda{|advert| advert.title.present? }) do |advert|
    advert.title
end


 child :advert_images do
     attributes :id, :image
   end

 child :layouts do
      attributes :id, :image
    end


