class RestaurantSerializer
  include FastJsonapi::ObjectSerializer
  has_many :menus
  attributes :name
end