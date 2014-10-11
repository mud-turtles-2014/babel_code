class OriginalSnippetsController < ApplicationController
  # before_filter :current_original_snippet, only: [:show, :update, :edit]

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
  end

  def show
    @original_snippet = OriginalSnippet.find(params[:id])
    @language_name = language_name(@original_snippet.language_id)
  end

  def destroy
  end

  private
  def original_snippet_params
    params.require(:original_snippet).permit( [:title, :description, :snippet, :language_id])
  end

  def language_name(language_id)
    Language.find(language_id).language
  end
end
