FactoryBot.define do
  factory :author do
    first_name { "Alan" }
    last_name { "Turing" }
    homepage { "http://wikipedia.de/Alan_Turing" }
  end
  factory :secondAuthor, class: Author do
    first_name { "Lan" }
    last_name { "Ring" }
    homepage { "http://wikipedia.de/Alan_Turing" }
  end
end
