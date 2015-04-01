class Flight < ActiveRecord::Base

  belongs_to :journey
  has_many :legs

  accepts_nested_attributes_for :journey, :legs

end
