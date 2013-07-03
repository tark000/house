# encoding: utf-8
class AdvertPdf <  Prawn::Document
  include ActionView::Helpers::TextHelper

  def initialize(advert, view, url, map)
    super()

    font "#{Rails.root}/app/assets/fonts/verdana.ttf"
    #image advert.image, :fit => [150, 150]

    text_box "id " + advert.id.to_s, :kerning => true, :at => [500, y - 15], :size => 12
    text advert.title, :size => 18
    #move_down 20
    advert.advert_images.each do |img|
      #move_down 20
      #image img.image, :fit => [150, 150], :position => 1
    end
    move_down 15
    table([ ["Цена", advert.price, "Площадь", advert.area],
            ["Регион", advert.region.title, "Город", advert.city.title],
           ["Район", advert.district.title, "Улица", advert.street.title  ]  ,
            ["Дом", advert.house, "Этаж", advert.floor],
            ["Количество комнат", advert.rooms, "Категория", advert.category.title] ], :row_colors => ["F0F0F0", "FFFFCC"])
    move_down 15
    text truncate advert.description, :length => 700
    move_down 20
    @path = '/public/uploads/advert/image/' + advert.id.to_s + '/map.png'
    @path = "#{Rails.root}#{@path}"
    image @path if FileTest.exist?(@path)
    move_down 20
    text url, :size => 10

  end



end