class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @doctors = User.where(do_online: true, is_doctor: true)
  end

  def dashboard
  end

  def anxiety
  end

  def depression
  end

  def trauma
  end

  def ocd
  end

  def ptsd
  end

  def adhd
  end

  def eatingdisorders
  end

  def coupletherapy
  end
end
