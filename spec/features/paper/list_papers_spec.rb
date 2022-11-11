require 'rails_helper'

describe "List papers", type: :feature do
  it "should have a link to the edit page" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit papers_path
    # expect(page).to have_link 'Edit this paper'
  end
  it "should have a link to the delete page" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit papers_path
    # expect(page).to have_text("Delete")
  end
  it "should be possible to filter papers by year" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    @mind = FactoryBot.create :paper
    @papers = Paper.specific_year(1950)
    expect(@papers).to include(@mind)
  end
end
