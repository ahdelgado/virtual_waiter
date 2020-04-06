# frozen_string_literal: true

class ItemsController < ApplicationController
  def destroy; end

  def create; end

  def update; end

  private

  def client_params
    params.require(:item).permit(:name, :price, :comments, :picture)
  end
end
