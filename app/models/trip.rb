class Trip < ActiveRecord::Base
  has_many :journeys


  accepts_nested_attributes_for :journeys
end
