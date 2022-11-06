require 'rails_helper'

describe "List authors", type: :feature do
  it "should display the titles" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit papers_path
    expect(page).to have_text("Title")
  end  
  it "should have a link to the edit page" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit papers_path
    # expect(page).to have_text("Edit")
    # expect(page).to have_button('Edit this paper')
  end
  it "should have a link to the delete page" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit papers_path
    # expect(page).to have_text("Delete")
  end
end
