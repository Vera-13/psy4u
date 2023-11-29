class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    redirect_to root_path if current_user != @chatroom.patient && current_user != @chatroom.doctor
    @message = Message.new
  end
end
