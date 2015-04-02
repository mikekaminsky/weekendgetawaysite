class FlightsController < ApplicationController

 def index
    #@flights = Journey.includes(:trip, flights: [:legs]).where("date(time_queried at time zone 'EST') >= current_date")
    @flights = Journey.includes(:trip, flights: [:legs]).where("date(time_queried) >= current_date")
  end

end
