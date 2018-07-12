class Heat
  include Mongoid::Document
  field :heat_number, type: String
  field :heat_time, type: String
  embedded_in :meeting, inverse_of: :heats
end
