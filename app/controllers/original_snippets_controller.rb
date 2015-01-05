class OriginalSnippetsController < ApplicationController
  before_filter :current_snippet, only: [:show, :update, :edit, :destroy]

  def index
    @recent = OriginalSnippet.all.order("created_at desc")
    @ruby_entries = OriginalSnippet.all.where(language_id: 1).order("created_at desc")
    @js_entries = OriginalSnippet.all.where(language_id: 2).order("created_at desc")
    @java_entries = OriginalSnippet.all.where(language_id: 3).order("created_at desc")
    @python_entries = OriginalSnippet.all.where(language_id: 4).order("created_at desc")
  end

  def new
    @original_snippet = OriginalSnippet.new
  end

  def create
    @original_snippet = current_user.original_snippets.new(original_snippet_params)

    if @original_snippet.save
      redirect_to original_snippet_path(@original_snippet)
    else
      redirect_to new_original_snippet_path
    end
  end

  def edit
  end

  def update
    @original_snippet.update(original_snippet_params)
    redirect_to original_snippet_path(@original_snippet)
  end

  def show
    @reply_snippets = @original_snippet.reply_snippets.all
    @reply_snippets = @reply_snippets.sort { |snip1, snip2| snip2.tally_votes <=> snip1.tally_votes }
    @reply_snippet = ReplySnippet.new
    @current_user = current_user
  end

  def destroy
    @original_snippet.destroy
    redirect_to original_snippets_path
  end

  private
  def original_snippet_params
    params.require(:original_snippet).permit( [:title, :description, :snippet, :language_id])
  end

  def current_snippet
    @original_snippet = OriginalSnippet.friendly.find(params[:id])
  end
end
