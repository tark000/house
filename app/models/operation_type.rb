class OperationType < ActiveRecord::Base
  attr_accessible :title
  has_many :adverts
end
