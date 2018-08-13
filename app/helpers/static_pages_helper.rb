module StaticPagesHelper
    
    def gate_results(meeting, gate_number)
        
        if meeting.heats.present?
            red = meeting.heats.where(red_gate: gate_number).sum(:red_score)
            blue = meeting.heats.where(blue_gate: gate_number).sum(:blue_score)
            white = meeting.heats.where(white_gate: gate_number).sum(:white_score)
            yellow = meeting.heats.where(yellow_gate: gate_number).sum(:yellow_score)
            
            score = red + blue + white + yellow
        else
            score = 0
        end
    end
    

    
    def getHomeRiderStats(meeting, rider)
        if meeting.heats.present?
            score = meeting.heats.where(blue_rider: rider).sum(:blue_score) + meeting.heats.where(red_rider: rider).sum(:red_score)
        else
            score = 0
        end
    end
    
    def getAwayRiderStats(meeting, rider)
        if meeting.heats.present?
            score = meeting.heats.where(white_rider: rider).sum(:white_score) + meeting.heats.where(yellow_rider: rider).sum(:yellow_score)
        else
            score = 0
        end
    end

end
  