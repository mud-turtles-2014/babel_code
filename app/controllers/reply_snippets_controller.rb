class ReplySnippetsController < ApplicationController

  def create
    @reply_snippet = current_user.reply_snippets.new(reply_snippet_params)

    if @reply_snippet.save
      redirect_to original_snippet_path(@reply_snippet.original_snippet)
    else
      redirect_to original_snippet_path(@reply_snippet.original_snippet)
    end
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
