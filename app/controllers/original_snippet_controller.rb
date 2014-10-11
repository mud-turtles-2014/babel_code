class OriginalSnippetController < ApplicationController
  before_filter :original_snippet_params, only: [:show, :update, :edit]

  def new
    @original_snippet = OriginalSnippet.new
  end

  def create

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
    @original_snippet = OriginalSnippet.find(params[:id])
  end

end
