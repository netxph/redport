class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.create!(params[:feedback])
    flash[:notice] = "New feedback created."
    redirect_to new_feedback_path
  end

end
