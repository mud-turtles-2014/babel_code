require 'rails_helper'

describe Vote do
  let(:my_user) { User.create(username: "Rafael", email: "rafael@rafael.com", password:"test")}

  let(:snippet) do
    ReplySnippet.create(snippet: "class User end",
                        description: "This is a User in Ruby",
                        language_id: 1,
                        user: my_user,
                        original_snippet_id: 1)
  end

  describe "validates without params" do
    it "is invalid without a vote" do
      expect(Vote.create(user: my_user, reply_snippet: snippet)).to_not be_valid
    end

    it "is invalid without a user" do
      expect(Vote.create(reply_snippet: snippet, vote: 1)).to_not be_valid
    end

    it "is invalid without a reply_snippet" do
      expect(Vote.create(user: my_user, vote: 1)).to_not be_valid
    end
  end

  describe "#vote" do
    it 'is invalid for values less than -1' do
      expect(Vote.create(user: my_user, reply_snippet: snippet, vote: -2)).to_not be_valid
    end
    it 'is invalid for values greater_than than 1' do
      expect(Vote.create(user: my_user, reply_snippet: snippet, vote: 2)).to_not be_valid
    end
    it 'is invalid for value equal 0' do
      expect(Vote.create(user: my_user, reply_snippet: snippet, vote: 0)).to_not be_valid
    end
  end

end
