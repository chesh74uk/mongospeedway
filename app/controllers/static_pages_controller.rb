class StaticPagesController < ApplicationController
  
  def gate

  end

  def rider
      @meeting = Meeting.find(params[:meeting_id])

  end
  

end