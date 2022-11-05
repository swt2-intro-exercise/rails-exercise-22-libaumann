require 'rails_helper'

describe "List authors", type: :feature do
  it "should have a link to the edit page" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit papers_path
    # expect(page).to have_text("Edit")
  end
end
