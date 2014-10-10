FactoryGirl define do
  factory :original_snippet do
    title {"Ruby Racer to JS Racer"}
    snippet {"string of code goes here"}
    description {" I'm trying to make an OOJS game..."}
    language {1}
    user {1}
  end
end