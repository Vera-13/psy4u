class DoctorsController < ApplicationController
  def index
    @doctors = User.where(is_doctor: true)
    @booking = Booking.new
    @markers = @doctors.geocoded.map do |doctor|
      {
        lat: doctor.latitude,
        lng: doctor.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {doctor: doctor}),
        marker_html: render_to_string(partial: "marker", locals: {doctor: doctor})
      }
    end
  end

  def show
    @doctor = User.find(params[:doctor_id])
    @booking = Booking.new
  end
end
