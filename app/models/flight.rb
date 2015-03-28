class Flight < ActiveRecord::Base

  belongs_to :trip
  has_many :legs

end
