# frozen_string_literal: true

class ClientsController < ApplicationController
  def index
    @clients = Client.order(:name)
  end

  def show
    @client = Client.find(client_params[:id])
  end

  def edit; end

  def destroy; end

  def create
    @client = Client.new(client_params)
    if @client.save
      flash[:success] = "Client added to database"
      redirect_to root_path
    else
      flash[:danger] = "Save unsuccessful"
    end
  end

  def new
    @client = Client.new
  end

  def update; end

  private

  def client_params
    params.permit(:id, :name, :logo)
  end
end
