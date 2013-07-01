# encoding: utf-8
class AdvertPdf <  Prawn::Document
  include ActionView::Helpers::TextHelper

  def initialize(advert, view, url, map)
    super()

    font "#{Rails.root}/app/assets/fonts/verdana.ttf"
    @example_font = "Courier"
    @style = :bold




    text url
    move_down 20
    @path = '/public/uploads/advert/image/' + advert.id.to_s + '/map.png'
    @path = "#{Rails.root}#{@path}"
    image @path, :fit => [150, 150] if FileTest.exist?(@path)
    move_down 20
    #image advert.image, :fit => [150, 150]
    text "id " + advert.id.to_s + " " + advert.title
    #move_down 20
    advert.advert_images.each do |img|
      #move_down 20
      #image img.image, :fit => [150, 150], :position => 1
    end
    move_down 20
    table([ ["Цена", advert.price, "Площадь", advert.area],
            ["Регион", advert.region.title, "Город", advert.city.title],
            ["Район", advert.district.title, "Улица", advert.street.title],
            ["Дом", advert.house, "Этаж", advert.floor],
            ["Количество комнат", advert.rooms, "Категория", advert.category.title] ], :row_colors => ["F0F0F0", "FFFFCC"])
    move_down 20
    text truncate advert.description, :length => 350


  end



end