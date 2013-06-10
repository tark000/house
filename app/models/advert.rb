class Advert < ActiveRecord::Base
  attr_accessible :all_price, :area, :category_id, :city_id, :description, :district_id, :estate_type_id, :floor,
                  :house, :image, :layout, :living, :operation_type_id, :price, :region_id, :room_number, :state,
                  :street_id, :title, :video, :remote_image_url, :remote_layout_url, :advert_images_attributes, :layouts_attributes
  mount_uploader :image, ImageUploader
  mount_uploader :layout, ImageUploader

  has_many :advert_images, :dependent => :destroy
  accepts_nested_attributes_for :advert_images, allow_destroy: true

  has_many :layouts, :dependent => :destroy
  accepts_nested_attributes_for :layouts, allow_destroy: true
  belongs_to :operation_type
  belongs_to :category
  belongs_to :estate_type
  belongs_to :region
  belongs_to :city
  belongs_to :district
  belongs_to :street

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

end
