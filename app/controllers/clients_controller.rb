# frozen_string_literal: true

class ClientsController < ApplicationController
  def index; end

  def show; end

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
    params.require(:client).permit(:name, :logo)
  end
end
