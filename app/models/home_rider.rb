class HomeRider
  include Mongoid::Document
  field :home_rider_1, type: String
  field :home_rider_2, type: String
  field :home_rider_3, type: String
  field :home_rider_4, type: String
  field :home_rider_5, type: String
  field :home_rider_6, type: String
  field :home_rider_7, type: String
  embedded_in :meeting, inverse_of: :home_rider
end