class Meeting
  include Mongoid::Document
  field :home_team_name, type: String
  field :away_team_name, type: String
  field :gate, type: String
  field :date, type: Date
  embeds_many :heats
  embeds_one :home_riders
  accepts_nested_attributes_for :heats
  accepts_nested_attributes_for :home_riders
end
