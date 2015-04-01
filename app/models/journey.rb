class Journey < ActiveRecord::Base

  belongs_to :trip
  has_many :flights


  def duration_info
   counts = legs.group('slice').count
   {outbound_legs: counts[1],
    return_legs: counts[2] }
 end


  accepts_nested_attributes_for :trip, :flights

end
