require 'rails_helper'

describe "New author page", type: :feature do
  let(:new_author_path) { authors_index_url }
  it "should exist at 'new_author_path' and render withour error" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit new_author_path
  end
end
