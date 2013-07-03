require "babosa"
class Advert < ActiveRecord::Base

  attr_accessible :id, :category_id, :city_id, :district_id, :street_id, :house, :house_material_id,
                  :house_type_id, :rooms, :rooms_type_id, :floor, :floors, :trassa_diraction_id,
                  :purpouse_land_id, :landsize, :title, :description, :area, :life_area, :kitchen,
                  :home_deadline, :free_from, :floor_type_id, :wc_count, :state_repair_id, :ceill_height,
                  :distance, :hotadv, :price, :all_price, :usercost, :usercostforall,
                  :currency_user_id, :viewcount, :metro_station_id, :door_id,
                  :accommodation_term_id,  :preporty_location_id, :business_center_class_id,
                  :separate_entrence_id, :cabinetcount, :bussines_period_id, :layout, :image,
                  :user_id, :slug, :torg, :free_to, :operation_type_id, :commission, :flat_type_id, :video,
                  :admin, :region_id, :mapaddress, :youtube, :remote_image_url, :remote_layout_url,
                  :advert_images_attributes, :layouts_attributes, :movies_attributes, :address, :longitude, :latitude, :living

 extend FriendlyId

 friendly_id :title, use: :slugged

 def normalize_friendly_id(input)
   input.to_s.to_slug.normalize(transliterations: :russian).to_s
 end


  attr_accessor   :address

  geocoded_by :address
  after_validation :geocode

  def address
    if self.street.present? & self.city.present?
      [self.house, self.street.name, self.city.name, "UA"].compact.join(', ')
      map_download
    else
      puts self.id
    end
  end



  mount_uploader :image, ImageUploader
  mount_uploader :layout, ImageUploader
  mount_uploader :mapaddress, ImageUploader

  has_many :advert_images, :dependent => :destroy
  accepts_nested_attributes_for :advert_images, allow_destroy: true

  has_many :layouts, :dependent => :destroy
  accepts_nested_attributes_for :layouts, allow_destroy: true

  has_many :movies, :dependent => :destroy
  accepts_nested_attributes_for :movies, allow_destroy: true

  belongs_to :operation_type
  belongs_to :category
  belongs_to :region
  belongs_to :city
  belongs_to :district
  belongs_to :street
  belongs_to :accommodation_terms
  belongs_to :business_center_classes
  belongs_to :currency_users
  belongs_to :doors
  belongs_to :flat_types
  belongs_to :floor_types

  belongs_to :house_materials
  belongs_to :house_types
  belongs_to :metro_stations
  belongs_to :preporty_locations
  belongs_to :purpouse_lands
  belongs_to :rooms_types
  belongs_to :separate_entrences
  belongs_to :state_repairs
  belongs_to :trassa_diractions


  scope :search, lambda{ |b = nil| where('id = ?', "#{b}") if b.present? }

  scope :operation_type_search , lambda{|b| where(:operation_type_id => b)}
  scope :category_search, lambda{ |b| where(:category_id => b)}
  scope :living_search , lambda{|b=nil| where(b.nil? ? ''  :living => b)}
  scope :state_search, lambda{|b| where(:state => b)}
  scope :all_min_price_search, lambda{|b| where("all_price >= ?", b)}
  scope :all_max_price_search, lambda{|b| where("all_price <= ?", b)}
  scope :min_price_search, lambda{|b| where("price >= ?", b)}
  scope :max_price_search, lambda{|b| where("price <= ?", b)}
  scope :min_area_search, lambda{|b| where("area >= ?", b)}
  scope :max_area_search, lambda{|b| where("area <= ?", b)}
  scope :regoin_search, lambda{|b| where(:region_id => b)}
  scope :city_search, lambda{|b| where(:city_id => b)}

  scope :search_by_type,lambda{|b| where(:category_id => b)}

  def self.all_cached
    Rails.cache.fetch('Contact.all') { all }
  end

  def map_download
    require 'open-uri'
    map = "#{uuid}.png"
    @path = "#{store_dir}/#{map}"
    open(@path, 'wb') do |file|
      file << open(static_map).read
    end
    self.map = map
    self.save
  end

  def uuid
    UUID.state_file = false
    uuid = UUID.new
    uuid.generate

  end

  def static_map
    params = {
        :center => [self.latitude, self.longitude].join(","),
        :zoom => 12,
        :size => "300x300",
        :markers => [self.latitude, self.longitude].join(","),
        :sensor => false
    }
    query_string =  params.map{|k,v| "#{k}=#{v}"}.join("&")
    @c = "http://maps.googleapis.com/maps/api/staticmap?#{query_string}"
    @c
  end

  def store_dir
    "uploads/#{self.class.to_s.underscore}/map/#{self.id}"
  end

end
