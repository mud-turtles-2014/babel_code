class VotesController < ApplicationController
  def new
  end

  def create
    vote = current_user.votes.create(votable_id: params[:votable_id], votable_type: params[:votable_type], vote: params[:vote])
    snippet_id = vote.votable_id
    snippet_class = vote.votable_type
    vote_count = vote.votable.tally_votes
    res = {snippet_id: snippet_id, snippet_class: snippet_class, vote_count: vote_count}
		respond_to do |format|
			format.json { render json: res }
	  end
	end

end


