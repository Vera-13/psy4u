class DoctorsController < ApplicationController
  def index
    @doctors = User.where(is_doctor: true)
    @booking = Booking.new
  end

  def show
    @doctor = User.find(params[:id])
    @booking = Booking.new
  end
end
