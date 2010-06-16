class FeedbacksController < ApplicationController
  def new
    @title = "New Feedback"
    @feedback = Feedback.new
  end

  def create
    @title = "New Feedback"
    
    @feedback = Feedback.new(params[:feedback])
    
    if @feedback.valid?
      @feedback.save
      flash[:notice] = "New feedback created."
      redirect_to new_feedback_path
    else
      flash[:error] = "There are validation errors."
      render :action => "new"
    end
  end

end
