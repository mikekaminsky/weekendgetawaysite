class Flight < ActiveRecord::Base

  belongs_to :trip
  has_many :legs

  def outbound_duration
    durations = legs.group('slice').maximum(:slice_duration)
    durations[1]
  end

  def return_duration
    durations = legs.group('slice').maximum(:slice_duration)
    durations[2]
  end

  def outbound_legs
    numlegs = legs.group('slice').count
    numlegs[1]
  end

  def return_legs
    numlegs = legs.group('slice').count
    numlegs[2]
  end



  accepts_nested_attributes_for :trip, :legs

end
