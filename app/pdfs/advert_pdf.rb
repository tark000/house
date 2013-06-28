# encoding: utf-8
class AdvertPdf <  Prawn::Document
  include ActionView::Helpers::TextHelper

  def initialize(advert, view, url, map)
    super()
    font "#{Rails.root}/app/assets/fonts/verdana.ttf"
    text url
    text "id " + advert.id.to_s + " " + advert.title
    move_down 20
    image advert.image, :fit => [200, 200]
    advert.advert_images.each do |img|
      move_down 20
      image img.image, :fit => [200, 200]
    end
    move_down 20
    table([ ["Цена", advert.price, "Площадь", advert.area],
            ["Регион", advert.region.title, "Город", advert.city.title],
            ["Район", advert.district.title, "Улица", advert.street.title],
            ["Дом", advert.house, "Этаж", advert.floor],
            ["Количество комнат", advert.rooms, "Категория", advert.category.title] ])
    move_down 20
    text truncate advert.description, :length => 350


  end



end