class DoctorsController < ApplicationController
  def index
    @doctors = User.where(is_doctor: true)
    @booking = Booking.new
    # if params[:query].present?
    #   @doctors = @doctors.where(address: params[:query])
    # end
    if params[:query].present?
      @doctors = @doctors.where("address ILIKE ?", "%#{params[:query]}%")
    end
  end

  def show
    @doctor = User.find(params[:id])
    @booking = Booking.new
    @marker =
      {
        lat: @doctor.latitude,
        lng: @doctor.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {doctor: @doctor}),
        marker_html: render_to_string(partial: "marker", locals: {doctor: @doctor})
      }
    @language = Language.all
  end
end
