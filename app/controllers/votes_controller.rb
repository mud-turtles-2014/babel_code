class VotesController < ApplicationController
  def new
  end

  def create
    current_user.votes.create(votable_id: params[:votable_id], votable_type: params[:votable_type], vote: params[:vote])
    redirect_to :back
  end

end
