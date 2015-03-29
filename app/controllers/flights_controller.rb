class FlightsController < ApplicationController

 def index
    @flights = Flight.where("date(time_queried) = current_date")
  end

end
