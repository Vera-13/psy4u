class BookingsController < ApplicationController
  def new
    @booking.patient = current_user
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @doctor = User.find(params[:doctor_id])
    @booking.doctor = @doctor
    @booking.patient = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render "doctors/show", status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to doctor_path(@bookmark.doctor), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :patient_id, :doctor_id)
  end
end
