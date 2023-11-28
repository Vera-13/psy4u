class BookingsController < ApplicationController
  def new
    @booking.patient = current_user
    @booking = Booking.new
  end

  def create
    @booking.doctor = User.find(params?)
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:datetime, :patient_id, :doctor_id)
  end
end
