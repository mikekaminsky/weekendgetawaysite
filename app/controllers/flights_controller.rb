class FlightsController < ApplicationController

 def index
    @flights = Journey.where("date(time_queried) = current_date")
  end

end
