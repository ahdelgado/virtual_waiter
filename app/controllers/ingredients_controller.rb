# frozen_string_literal: true

class IngredientsController < ApplicationController
  def destroy; end

  def create; end

  def update; end

  private

  def ingredient_params
    params.require(:item).permit(:name, :price, :picture)
  end
end
