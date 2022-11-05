require 'rails_helper'

describe "Edit author page", type: :feature do
  it "should be used to update an author" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    @alan = FactoryBot.create :author
    visit edit_author_path(@alan)
    page.fill_in 'author[last_name]', with: 'T'
    find('input[type="submit"]').click
    visit author_path(@alan)
    expect(page).to have_text("Alan T")
  end
end
