require 'rails_helper'

describe "Paper", type: :model do
  it "should not accept a paper without a title" do
      # visit new_author_path
      paper = Paper.new
	paper.title = ""
	paper.venue = "HPI"
	paper.year = 1997
	expect(paper).to_not be_valid
  end
end
