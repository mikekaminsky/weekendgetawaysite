class Trip < ActiveRecord::Base
  has_many :journeys
end
