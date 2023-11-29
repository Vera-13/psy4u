class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @doctors = User.where(do_online: true, is_doctor: true)
  end

  def dashboard
  end
end
