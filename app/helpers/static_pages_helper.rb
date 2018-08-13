module StaticPagesHelper
    
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
  