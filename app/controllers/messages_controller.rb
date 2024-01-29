class MessagesController < ApplicationController
  def index
    @messages = Message.all.sort_by(&:created_at).reverse
  end
end
