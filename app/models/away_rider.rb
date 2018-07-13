class AwayRider
  include Mongoid::Document
  field :away_rider_1, type: String
  field :away_rider_2, type: String
  field :away_rider_3, type: String
  field :away_rider_4, type: String
  field :away_rider_5, type: String
  field :away_rider_6, type: String
  field :away_rider_7, type: String
  embedded_in :meeting, inverse_of: :away_rider
end