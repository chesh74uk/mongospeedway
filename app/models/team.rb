class Team
  include Mongoid::Document
  field :rider, type: String
  field :team_name, type: String
end
