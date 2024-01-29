class MessagesController < ApplicationController
  def index
    @messages = Message.all.sort_by(&:created_at).reverse
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])

    if @message.save
      redirect_to messages_path, notice: 'Message was successfully created.'
    else
      render action: 'new', alert: 'Message was not created.', status: :unprocessable_entity
    end
  end

  
end
