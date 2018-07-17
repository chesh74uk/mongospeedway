module AwayRidersHelper

    def get_name(team, position)
        riders = Team.where(team_name: team).pluck(:rider)
        riders[position-1]
    end
    
end