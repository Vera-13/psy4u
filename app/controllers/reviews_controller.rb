class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @doctor = User.find(params[:doctor_id])
  end

  def create
    @review = Review.new(review_params)
    @doctor = User.find(params[:doctor_id])
    @review.doctor = @doctor
    @review.patient = current_user
    if @review.save!
      redirect_to doctor_path(@doctor)
    else
      flash[:alert] = "Something went wrong."
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating, :patient_id, :doctor_id)
  end
end
