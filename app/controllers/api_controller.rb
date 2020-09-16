require "json"


class ApiController < ActionController::API
    def temp
        file = File.open Rails.root.join("app", "assets", "javascripts", "data.json")
        data = JSON.load file
        render :json => data
    end

    def restaurant
        restaurant = Restaurant.find 1
        render :json => RestaurantSerializer.new(restaurant, include: [:menus, :'menus.sections', :'menus.sections.items', :'menus.sections.items.sections', :'menus.sections.items.sections.items']).serialized_json
    end

end