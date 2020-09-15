require "json"


class ApiController < ActionController::API
    def temp
        file = File.open Rails.root.join("app", "assets", "javascripts", "data.json")
        data = JSON.load file
        render :json => data
    end

end