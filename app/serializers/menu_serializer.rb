class MenuSerializer
  include FastJsonapi::ObjectSerializer
  has_many :sections

  attributes :name
end
