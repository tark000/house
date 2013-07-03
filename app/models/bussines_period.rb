class BussinesPeriod < ActiveRecord::Base
  attr_accessible :name, :period
  alias_attribute :title, :name
  has_many :adverts
end
