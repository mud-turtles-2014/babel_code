class ReplySnippetsController < ApplicationController

  def create
    @reply_snippet = current_user.reply_snippets.create(reply_snippet_params)

    render partial: 'layouts/reply_snippet', locals: {current_user: current_user, reply: @reply_snippet }
  end


  def destroy
    ReplySnippet.find(params[:id]).destroy
    redirect_to :back
  end

  private
  def reply_snippet_params
    params.require(:reply_snippet).permit([:snippet, :description, :language_id, :original_snippet_id])
  end
end