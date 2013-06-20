class Category < ActiveRecord::Base
  attr_accessible :name
  alias_attribute :title, :name
  has_many :adverts
end
