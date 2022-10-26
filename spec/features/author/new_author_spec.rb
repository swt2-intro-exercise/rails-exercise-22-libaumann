require 'rails_helper'

describe "New author page", type: :feature do
  it "should exist at 'authors_index_url' and render withour error" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit authors_index_url
  end
end
