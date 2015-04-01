class Journey < ActiveRecord::Base

  belongs_to :trip
  has_many :flights


  accepts_nested_attributes_for :trip, :flights

end
