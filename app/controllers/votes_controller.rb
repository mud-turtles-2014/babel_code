class VotesController < ApplicationController
  def new
  end

  # need to change to account for
  # votable_type and votable_id
  # instead of reply_snippet
  def create
    current_user.votes.create(votable_id: params[:votable_id], votable_type: params[:votable_type], vote: params[:vote])
    redirect_to :back
  end

end
