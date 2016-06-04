class TripController < ApplicationController
  before_action :find_trip, only: [:show, :update, :edit, :destroy]
  # before_action :authenticate_user!, only: [:create, :update, :destroy, :show, :index]

  def new
    @trip = trip.new
  end

  def index
    @trips = trip.all
  end

  def show
  end

  def create
    @trip = current_user.trips.new(trip_params)

    respond_to do |format|
      if @trip.save
        format.html { redirect_to @trip, notice: 'trip was successfully added.' }
        format.json { render :show, status: :created, location: @trip }
      else
        format.html { render :new }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { redirect_to @trip, notice: 'trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip }
      else
        format.html { render :edit }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url, notice: 'trip was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  protected

  def find_trip
    @trip = trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:name, :date_from, :user_id, :date_to, :place)
  end
end
