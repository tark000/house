class AccommodationTerm < ActiveRecord::Base
  attr_accessible :days, :name
  alias_attribute :title, :name
  has_many :adverts
end
