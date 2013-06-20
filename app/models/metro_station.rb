class MetroStation < ActiveRecord::Base
  attr_accessible :city_id, :name
  alias_attribute :title, :name
  has_many :adverts
end
