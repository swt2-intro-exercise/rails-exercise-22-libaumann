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
  it "should not accept a paper without a venue" do
      # visit new_author_path
      paper = Paper.new
	paper.title = "Data Ethics"
	paper.venue = ""
	paper.year = 1997
	expect(paper).to_not be_valid
  end
  it "should not accept a paper without a year" do
      # visit new_author_path
      paper = Paper.new
	paper.title = "Data Ethics"
	paper.venue = "HPI"
	paper.year = nil
	expect(paper).to_not be_valid
  end
  it "should not accept a paper when year is not numerical" do
      # visit new_author_path
      paper = Paper.new
	paper.title = "Data Ethics"
	paper.venue = "HPI"
	paper.year = "A"
	expect(paper).to_not be_valid
  end
  it "should have an empty list of authors" do
      # visit new_author_path
      paper = Paper.new
	paper.title = "Data Ethics"
	paper.venue = "HPI"
	paper.year = "1997"
	expect(paper.authors).to eq([])
  end
  it "should be possible to add author" do
      # visit new_author_path
      paper = Paper.new
	paper.title = "Data Ethics"
	paper.venue = "HPI"
	paper.year = "1997"
	paper.authors << Author.new(first_name: "Marie", last_name: "Jarisch", homepage: "https://www.notion.so/")
	expect(paper.authors.length).to eq(1)
  end
end

