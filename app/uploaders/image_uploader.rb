# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Include the Sprockets helpers for Rails 3.1+ asset pipeline compatibility:
  # include Sprockets::Helpers::RailsHelper
  # include Sprockets::Helpers::IsolatedHelper

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end


  version :small do
    process :resize_to_fill => [190, 130]
    process :convert => 'png'
    process :watermark
  end

  version :medium do
    process :resize_to_fill => [250, 170]
    process :convert => 'png'
    process :watermark
  end

  version :big do
    process :resize_to_fill => [800,600]
    process :convert => 'png'
    process :watermark
  end


  def filename
    if original_filename
      if model && model.read_attribute(mounted_as).present?
        model.read_attribute(mounted_as)
      else
        @name ||= "#{mounted_as}-#{uuid}.#{file.extension}"
      end
    end
  end

  def uuid
    UUID.state_file = false
    uuid = UUID.new
    uuid.generate

  end

  def watermark
    manipulate! do |img|
      #image = Magick::Image.read(img)
      #logo = Magick::Image.read("#{Rails.root}/app/assets/images/watermark.png").first
      mark = Magick::Image.new(img.columns, img.rows)
      gc = Magick::Draw.new
      gc.gravity = Magick::CenterGravity
      gc.pointsize = 32
      gc.font_family = "Helvetica"
      gc.font_weight = Magick::BoldWeight
      gc.stroke = 'none'
      gc.annotate(mark, 0, 0, 0, 0, "Dorohouse")

      mark = mark.shade(true, 310, 30)

      img = img.composite(mark, Magick::CenterGravity, Magick::HardLightCompositeOp)
    end
  end

end
