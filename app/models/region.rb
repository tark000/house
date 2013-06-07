class Region < ActiveRecord::Base
  attr_accessible :title
  has_many :adverts
  has_many :cities
end
