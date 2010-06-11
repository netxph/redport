class FeedbackController < ApplicationController
  def new
    @feedback = Feedback.new
  end
  
  def index
  end

  def create
    @feedback = Feedback.create!(params[:feedback])
    flash[:notice] = "New Feedback Created."
    redirect_to new_feedback_path
  end
  
end
