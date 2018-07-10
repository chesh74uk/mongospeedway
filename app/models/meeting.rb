class Meeting
  include Mongoid::Document
  field :home_team_name, type: String
  field :away_team_name, type: String
  field :date, type: Date
  embeds_one :heat
end
