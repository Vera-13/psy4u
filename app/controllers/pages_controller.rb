class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @doctors = User.where(do_online: true, is_doctor: true)
  end

  def dashboard
  end

  def anxiety
    @symptom = Symptom.find_by(name: "Anxiety")
  end

  def depression
    @symptom = Symptom.find_by(name: "Depression")
  end

  def trauma
    @symptom = Symptom.find_by(name: "Trauma")
  end

  def ocd
    @symptom = Symptom.find_by(name: "OCD")
  end

  def ptsd
    @symptom = Symptom.find_by(name: "PTSD")
  end

  def adhd
    @symptom = Symptom.find_by(name: "ADHD")
  end

  def eatingdisorders
    @symptom = Symptom.find_by(name: "Eating Disorders")
  end

  def coupletherapy
    @symptom = Symptom.find_by(name: "Couple Therapy")
  end
end
