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
      if Chatroom.find_by(patient: @booking.patient, doctor: @booking.doctor).nil?
        Chatroom.create(patient: @booking.patient, doctor: @booking.doctor)
      end
      redirect_to dashboard_path
    else
      render "doctors/show", status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path, status: :see_other
  end


  private

  def booking_params
    params.require(:booking).permit(:date, :patient_id, :doctor_id)
  end
end
