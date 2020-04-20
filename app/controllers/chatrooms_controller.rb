class ChatroomsController < ApplicationController
  def index
    @chatroom = Chatroom.all
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      render 'new'
    end
  end

def destroy
  @chatroom = Chatroom.find(params[:id])
  @chatroom.destroy
  redirect_to chatrooms_path
end
end

private

def chatroom_params
  params.require(:chatroom).permit(:name)
end


