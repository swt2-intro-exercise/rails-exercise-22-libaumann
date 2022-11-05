require 'rails_helper'

describe "Show author page", type: :feature do
  it "should exist and render withour error" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    @alan = FactoryBot.create :author
    visit author_path(@alan)
    expect(page).to have_text("Alan Turing")
  end
end
