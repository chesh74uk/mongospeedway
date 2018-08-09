class Heat
  include Mongoid::Document
  field :heat_number, type: Integer
  field :heat_time, type: String
  field :red_gate, type: Integer
  field :red_score, type: Integer
  field :red_rider, type: String
  field :blue_gate, type: Integer
  field :blue_score, type: Integer
  field :blue_rider, type: String
  field :white_gate, type: Integer
  field :white_score, type: Integer
  field :white_rider, type: String
  field :yellow_gate, type: Integer
  field :yellow_score, type: Integer
  field :yellow_rider, type: String
  embedded_in :meeting, inverse_of: :heats
  
  SCORE = [3,2,1,0]
  
  validates :heat_time, presence: true
  validates :red_score, :blue_score, :white_score, :yellow_score, numericality: { only_integer: true }   
  
end
