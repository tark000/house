class HouseType < ActiveRecord::Base
  attr_accessible :name, :category_id
  alias_attribute :title, :name
  has_many :adverts
end
