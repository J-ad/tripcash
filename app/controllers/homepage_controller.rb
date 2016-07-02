class HomepageController < ApplicationController
  def index
    @trips = @trips = Trip.limit(5).order('created_at DESC')
  end
end
