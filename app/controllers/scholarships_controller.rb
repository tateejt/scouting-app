class ScholarshipsController < ApplicationController

  def new
    @scholarship = Scholarship.create(
      :user_id => params[:user_id],
      :school_id => params[:school_id]
    )
    @message = @scholarship.offered_scholarship
    redirect_to user_path(@scholarship.user, :message => @message)
  end
end
