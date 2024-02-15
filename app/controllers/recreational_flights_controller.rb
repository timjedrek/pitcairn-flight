class RecreationalFlightsController < ApplicationController
  before_action :set_recreational_flight, only: %i[ show edit update destroy ]
  before_action :authenticate_admin!, except: [:create, :new, :confirmation]
  invisible_captcha only: [:create], honeypot: :confirm_email

  # GET /recreational_flights or /recreational_flights.json
  def index
    @recreational_flights = RecreationalFlight.all
  end

  # GET /recreational_flights/1 or /recreational_flights/1.json
  def show
  end

  # GET /recreational_flights/new
  def new
    @recreational_flight = RecreationalFlight.new
  end

  # GET /recreational_flights/1/edit
  def edit
  end

  # POST /recreational_flights or /recreational_flights.json
  def create
    @recreational_flight = RecreationalFlight.new(recreational_flight_params)

    respond_to do |format|
      if @recreational_flight.save
        RecreationalFlightsMailer.recreational_flights_email(@recreational_flight).deliver_later
        format.html { redirect_to recreational_confirmation_path, notice: "#{@recreational_flight.first_name}" }
        format.json { render :show, status: :created, location: @recreational_flight }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recreational_flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recreational_flights/1 or /recreational_flights/1.json
  # def update
  #   respond_to do |format|
  #     if @recreational_flight.update(recreational_flight_params)
  #       format.html { redirect_to recreational_flight_url(@recreational_flight), notice: "Recreational flight was successfully updated." }
  #       format.json { render :show, status: :ok, location: @recreational_flight }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @recreational_flight.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /recreational_flights/1 or /recreational_flights/1.json
  def destroy
    @recreational_flight.destroy

    respond_to do |format|
      format.html { redirect_to recreational_flights_url, notice: "Recreational flight was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recreational_flight
      @recreational_flight = RecreationalFlight.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recreational_flight_params
      params.require(:recreational_flight).permit(:first_name, :last_name, :email, :phone, :occasion, :preferred_date, :preferred_availability, :alternate_date, :alternate_availability, :comments)
    end
end
