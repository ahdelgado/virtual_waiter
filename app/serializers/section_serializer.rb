class SectionSerializer
  include FastJsonapi::ObjectSerializer
  has_many :items
  
  attributes :name, :max_selectable, :required
end
