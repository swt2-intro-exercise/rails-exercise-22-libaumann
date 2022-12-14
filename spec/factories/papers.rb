FactoryBot.define do
  factory :paper do
    title {"COMPUTING MACHINERY AND INTELLIGENCE"}
    venue {"Mind 49: 433-460"}
    year {1950}
    authors {build_list :secondAuthor, 1}
  end
end