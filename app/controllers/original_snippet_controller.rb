class OriginalSnippetController < ApplicationController
  before_filter :original_snippet_params, only: [:show, :update, :edit]

  def new
    @original_snippet = OriginalSnippet.new
  end

  def create
    @original_snippet = OriginalSnippet.new(original_snippet_params)
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private
  def original_snippet_params
    params.require(:original_snippet).permit( [:title, :description, :snippet, :lanuguage_id])
    OriginalSnippet.find(params[:id])
  end

end
