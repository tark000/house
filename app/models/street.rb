class Street < ActiveRecord::Base
  attr_accessible :city_id, :name, :district_id
  alias_attribute :title, :name
  has_many :adverts
  belongs_to :city
end
