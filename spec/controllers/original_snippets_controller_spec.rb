require 'rails_helper'

describe OriginalSnippetsController do

  describe 'GET #index' do
    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
    it "populates an array of original snippets" do
      get :index
      original_snippet = FactoryGirl.create(:original_snippet)
      expect(assigns(:original_snippets)).to match_array(@original_snippets)
    end
  end

  describe 'GET #show' do
    it "assigns the requested original snippet to @snippet"
    it "renders the :show template"
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