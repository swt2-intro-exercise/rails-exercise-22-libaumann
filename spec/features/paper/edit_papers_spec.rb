require 'rails_helper'

describe "Edit paper page", type: :feature do
  it "should be used to update an author" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    @mind = FactoryBot.create :paper
    @lan = FactoryBot.create :secondAuthor
    visit edit_paper_path(@mind)
    # select "Lan Ring", :from => "author_ids"
    # find('input[type="submit"]').click
    expect(page).to have_select
  end
end
