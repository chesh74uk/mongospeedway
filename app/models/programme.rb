class Programme
  include Mongoid::Document
  field :heat_number, type: Integer
  field :helmet_colour, type: String
  field :rider, type: String
  field :gate_one, type: Integer
  field :gate_two, type: Integer
end

