class ResumesController < ApplicationController

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(resume_params)
    @resume.user = current_user
    if @resume.save!
      redirect_to myprofile_path(current_user)
    else
      render :new
    end
  end

  private

  def resume_params
    params.require(:resume).permit(
      :experience,
      :start_date,
      :end_date,
      :still_working,
    )
  end
end
