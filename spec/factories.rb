FactoryGirl.define do
  factory :original_snippet do
    title {"Ruby Racer to JS Racer"}
    snippet {"string of code goes here"}
    language {Language.first}
    user {User.first}
  end
end