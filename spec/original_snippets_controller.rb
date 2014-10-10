require 'rails_helper'

describe OriginalSnippetsController do


  describe 'GET #index' do
    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
    it "populates an array of original snippets" do
      original_snippet = create(:original_snippet)
      expect(assigns(:original_snippet)).to eq original_snippet
    end
  end

  describe 'GET #show' do
  end

  describe 'GET #new' do

  end

  describe 'GET #edit' do
  end

  describe "POST #create" do
  end

  describe 'PUT #update' do
  end

  describe 'DELETE #destroy' do
  end

end