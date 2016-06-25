class ExpencesController < ApplicationController
  before_action :set_expence, only: [:show, :edit, :update, :destroy]

  def index
    @expences = Expence.all
  end

  def show
  end

  def new
    @expence = Expence.new
  end

  def edit
  end

  def create
    @expence = Expence.new(expence_params)
    @trip = Trip.find_by_token(params[:trip_id])
    @member = Member.find_by_token(params[:member_id])

    respond_to do |format|
      if @expence.save
        format.html { redirect_to @expence, notice: 'Expence was successfully created.' }
        format.json { render :show, status: :created, location: @expence }
      else
        format.html { render :new }
        format.json { render json: @expence.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @expence.update(expence_params)
        format.html { redirect_to @expence, notice: 'Expence was successfully updated.' }
        format.json { render :show, status: :ok, location: @expence }
      else
        format.html { render :edit }
        format.json { render json: @expence.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @expence.destroy
    respond_to do |format|
      format.html { redirect_to expences_url, notice: 'Expence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_expence
      @expence = Expence.find(params[:id])
    end

    def expence_params
      params.require(:expence).permit(:ammount, :member, :title)
    end
end
