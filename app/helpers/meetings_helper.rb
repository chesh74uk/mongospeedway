module MeetingsHelper
    
    def home_score
        if @meeting.heats.present?
            score = @meeting.heats.sum(:blue_score) + @meeting.heats.sum(:red_score)
        else
            score = 0
        end
    end
    
    def away_score
        if @meeting.heats.present?
            score = @meeting.heats.sum(:white_score) + @meeting.heats.sum(:yellow_score)
        else
            score = 0
        end
    end
    
end
