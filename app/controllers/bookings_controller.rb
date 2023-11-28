class BookingsController < ApplicationController
  def new
    @booking.patient = current_user
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.doctor = User.find(params[:doctor_id])
    if @booking.save
      redirect_to doctor_path(@doctor)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to doctor_path(@bookmark.doctor), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:datetime, :patient_id, :doctor_id)
  end
end
