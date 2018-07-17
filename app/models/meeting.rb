class Meeting
  include Mongoid::Document
  field :home_team_name, type: String
  field :away_team_name, type: String
  field :gate, type: String
  field :date, type: Date
  embeds_many :heats
  embeds_one :home_riders
  embeds_one :away_riders
  accepts_nested_attributes_for :heats, :home_riders, :away_riders, autosave: true
  validates :date, :home_team_name, :away_team_name, presence: true
end
