class VotesController < ApplicationController
  def new
  end

  def create
    current_user.votes.create(reply_snippet_id: params[:reply_snippet], vote: params[:vote])
    redirect_to :back
  end
end
