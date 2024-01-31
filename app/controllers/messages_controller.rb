class MessagesController < ApplicationController
  def index
    @messages = Message.all.sort_by(&:created_at).reverse
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to messages_path, notice: 'Message was successfully created.'
    else
      render action: 'new', alert: 'Message was not created.', status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:english_message, :morse_code)
  end
end
