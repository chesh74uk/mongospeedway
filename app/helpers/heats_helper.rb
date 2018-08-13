module HeatsHelper
    
    def get_red_gate(heat, gate_select)
       if gate_select == "1 and 3"
           gate = {1 => 3, 2 => 2, 3 => 3, 4 => 3, 5 => 1, 6 => 1, 7 => 2, 8 => 4, 9 => 4, 10 => 4, 11 => 1, 12 => 1, 13 => 2, 14 => 3}
           gate[heat]
       else
           gate = {1 => 4, 2 => 1, 3 => 4, 4 => 4, 5 => 1, 6 => 2, 7 => 1, 8 => 3, 9 => 3, 10 => 3, 11 => 2, 12 => 2, 13 => 1, 14 => 4}
           gate[heat]
       end
    end
    
    def get_blue_gate(heat, gate_select)
       if gate_select == "1 and 3"
           gate = {1 => 1, 2 => 4, 3 => 1, 4 => 1, 5 => 3, 6 => 3, 7 => 4, 8 => 2, 9 => 2, 10 => 2, 11 => 3, 12 => 3, 13 => 4, 14 => 1}
           gate[heat]
       else
           gate = {1 => 2, 2 => 3, 3 => 2, 4 => 2, 5 => 3, 6 => 4, 7 => 3, 8 => 1, 9 => 1, 10 => 1, 11 => 4, 12 => 4, 13 => 3, 14 => 2}
           gate[heat]
       end
    end
    
    def get_white_gate(heat, gate_select)
       if gate_select == "1 and 3"
           gate = {1 => 4, 2 => 1, 3 => 2, 4 => 4, 5 => 2, 6 => 2, 7 => 1, 8 => 3, 9 => 1, 10 => 3, 11 => 2, 12 => 4, 13 => 1, 14 => 2}
           gate[heat]
       else
           gate = {1 => 3, 2 => 2, 3 => 1, 4 => 3, 5 => 4, 6 => 1, 7 => 2, 8 => 4, 9 => 2, 10 => 4, 11 => 1, 12 => 3, 13 => 2, 14 => 1}
           gate[heat]
       end
    end
    
    def get_yellow_gate(heat, gate_select)
       if gate_select == "1 and 3"
           gate = {1 => 2, 2 => 3, 3 => 4, 4 => 2, 5 => 4, 6 => 4, 7 => 3, 8 => 1, 9 => 3, 10 => 1, 11 => 4, 12 => 2, 13 => 3, 14 => 4}
           gate[heat]
       else
           gate = {1 => 1, 2 => 4, 3 => 3, 4 => 1, 5 => 2, 6 => 3, 7 => 4, 8 => 2, 9 => 4, 10 => 2, 11 => 3, 12 => 1, 13 => 4, 14 => 3}
           gate[heat]
       end
    end
    
    
    
    
   
    def get_red_rider(heat, id)
        @meeting = Meeting.find(id)
        @home_rider = @meeting.home_riders
        red = { 
              1 => @home_rider.home_rider_1, 
              2 => @home_rider.home_rider_6,
              3 => @home_rider.home_rider_3,
              4 => @home_rider.home_rider_5,
              5 => @home_rider.home_rider_3,
              6 => @home_rider.home_rider_1,
              7 => @home_rider.home_rider_5,
              8 => @home_rider.home_rider_2,
              9 => @home_rider.home_rider_3,
             10 => @home_rider.home_rider_1,
             11 => @home_rider.home_rider_5,
             12 => @home_rider.home_rider_3,
             13 => @home_rider.home_rider_1,
             14 => @home_rider.home_rider_4
            }
        red[heat]
    end
    
    def get_blue_rider(heat, id)
        @meeting = Meeting.find(id)
        @home_rider = @meeting.home_riders
            blue = { 
              1 => @home_rider.home_rider_2, 
              2 => @home_rider.home_rider_7,
              3 => @home_rider.home_rider_4,
              4 => @home_rider.home_rider_7,
              5 => @home_rider.home_rider_4,
              6 => @home_rider.home_rider_2,
              7 => @home_rider.home_rider_6,
              8 => @home_rider.home_rider_7,
              9 => @home_rider.home_rider_4,
             10 => @home_rider.home_rider_2,
             11 => @home_rider.home_rider_6,
             12 => @home_rider.home_rider_7,
             13 => @home_rider.home_rider_5,
             14 => @home_rider.home_rider_6
            }
            blue[heat]
        end
        
    def get_white_rider(heat, id)
        @meeting = Meeting.find(id)
        @away_rider = @meeting.away_riders
        white = { 
              1 => @away_rider.away_rider_1, 
              2 => @away_rider.away_rider_6,
              3 => @away_rider.away_rider_3,
              4 => @away_rider.away_rider_5,
              5 => @away_rider.away_rider_1,
              6 => @away_rider.away_rider_5,
              7 => @away_rider.away_rider_3,
              8 => @away_rider.away_rider_2,
              9 => @away_rider.away_rider_5,
             10 => @away_rider.away_rider_3,
             11 => @away_rider.away_rider_1,
             12 => @away_rider.away_rider_3,
             13 => @away_rider.away_rider_1,
             14 => @away_rider.away_rider_4
            }
        white[heat]
    end
    
    def get_yellow_rider(heat, id)
        @meeting = Meeting.find(id)
        @away_rider = @meeting.away_riders
        yellow = { 
              1 => @away_rider.away_rider_2, 
              2 => @away_rider.away_rider_7,
              3 => @away_rider.away_rider_4,
              4 => @away_rider.away_rider_7,
              5 => @away_rider.away_rider_2,
              6 => @away_rider.away_rider_6,
              7 => @away_rider.away_rider_4,
              8 => @away_rider.away_rider_7,
              9 => @away_rider.away_rider_6,
             10 => @away_rider.away_rider_4,
             11 => @away_rider.away_rider_2,
             12 => @away_rider.away_rider_6,
             13 => @away_rider.away_rider_5,
             14 => @away_rider.away_rider_7
            }
        yellow[heat]
    end
        
end