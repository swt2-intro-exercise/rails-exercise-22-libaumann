require 'rails_helper'

describe "Author", type: :model do
  it "should have text inputs for an author's first name, last name, and homepage" do
      # visit new_author_path
      author = Author.new
	author.first_name = "Alan"
	author.last_name = "Turing"
	author.homepage = "http://wikipedia.org/Alan_Turing"
	expect(author.first_name).to eq("Alan")
	expect(author.last_name).to eq("Turing")
      expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
      expect(author.name).to eq("Alan Turing")
  end
  it "should not accept an author without a last name" do
      # visit new_author_path
      author = Author.new
	author.first_name = "Alan"
	author.last_name = ""
	author.homepage = "http://wikipedia.org/Alan_Turing"
	expect(author).to_not be_valid
  end
end
