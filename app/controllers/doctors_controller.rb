class DoctorsController < ApplicationController
  def index
    @doctors = User.where(is_doctor: true)
  end

  def show
    @doctor = User.find(params[:id])
    @booking = Booking.new
  end
end
