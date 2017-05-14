class MessagesController < ApplicationController
  before_action :find_message, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show, :search]

  def index
    if(params.has_key?(:search))
      @messages = Message.search(params[:search]).paginate(:page => params[:page], :per_page => 9)
    elsif(params.has_key?(:param1))
       @messages = Message.where('category_id = ?', params[:param1]).order("created_at DESC").paginate(:page => params[:page], :per_page => 9)
    else
      @messages = Message.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 9)
    end
  end

  def show
  end

  def new
    if current_user.id != 1
      redirect_to root_path
    end
    @message = current_user.messages.build
  end

  def create
    @message = current_user.messages.build(message_params)
    if @message.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    if current_user.id != @message.user.id
      redirect_to root_path
    end
  end

  def destroy
    if current_user.id != @message.user.id
      redirect_to root_path
    end
    @message.destroy
    redirect_to root_path
  end

  def update
    if @message.update(message_params)
      redirect_to message_path
    else
      render 'edit'
    end
  end

  private
  def message_params
    params.require(:message).permit(:title, :description, :cover)
  end

  def find_message
    @message = Message.find(params[:id])
  end

end
