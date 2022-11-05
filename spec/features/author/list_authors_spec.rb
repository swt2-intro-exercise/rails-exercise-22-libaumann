require 'rails_helper'

describe "List authors", type: :feature do
  it "should exist and render withour error" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit authors_path
    expect(page).to have_text("Name")
    expect(page).to have_text("Homepage")
    expect(page).to have_css 'table'
    expect(page).to have_link 'New author', href: new_author_path
  end
end
