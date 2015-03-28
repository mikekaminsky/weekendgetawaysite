class FlightsController < ApplicationController

 def index
    @trips = Trip.all
  end

end
