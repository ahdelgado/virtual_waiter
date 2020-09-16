class ApiController < ActionController::API
    def restaurant
        restaurant = Restaurant.find 1
        render :json => RestaurantSerializer.new(restaurant, include: [:menus, :'menus.sections', :'menus.sections.items', :'menus.sections.items.sections', :'menus.sections.items.sections.items']).serialized_json
    end

end