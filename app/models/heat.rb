class Heat
  include Mongoid::Document
  field :heat_number, type: Integer
  field :heat_time, type: Decimal
end
