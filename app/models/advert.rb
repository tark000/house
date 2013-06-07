class Advert < ActiveRecord::Base
  attr_accessible :all_price, :area, :category_id, :city_id, :description, :district_id, :estate_type_id, :floor, :house, :image, :layout, :living, :operation_type_id, :price, :region_id, :room_number, :state, :street_id, :title, :video

  has_many :advert_images
  has_many :layouts
  belongs_to :operation_type
  belongs_to :category
  belongs_to :estate_type
  belongs_to :region
  belongs_to :city
  belongs_to :district
  belongs_to :street

end
