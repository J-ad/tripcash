class RaportsController < ApplicationController
  def show
    @trip = Trip.find_by(id: params[:trip_id])
    @members = @trip.members
    @expences = @trip.expences
  end
end
