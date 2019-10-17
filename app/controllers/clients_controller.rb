class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_attributes)
    if @client.save
      redirect_to clients_path
    else
      render :new
    end
  end

  private

  def client_attributes
    params.require(:client).permit(
      :first_name,
      :last_name,
      :photo
    )
  end
end
