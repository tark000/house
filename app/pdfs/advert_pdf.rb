# encoding: utf-8
class AdvertPdf <  Prawn::Document

  def initialize(advert, view)
    super()
    font "#{Rails.root}/app/assets/fonts/verdana.ttf"
    text advert.title, :size => 14

  end

end