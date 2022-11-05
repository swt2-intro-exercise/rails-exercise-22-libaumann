require 'rails_helper'

describe "Author page", type: :feature do
  it "should be possible to delete the author" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    @alan = FactoryBot.create :author
    visit authors_path
    expect(page).to have_link 'Delete'
  end
end
