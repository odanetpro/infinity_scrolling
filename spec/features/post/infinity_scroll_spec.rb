# frozen_string_literal: true

require 'rails_helper'

feature 'User can scroll the page indefinitely', "
  In order to load next pagination page
  As any user
  I would like pagination to work automatically when scrolling to the bottom of the page
" do
  given!(:posts) { create_list(:post, 30) }

  scenario 'User tries to load next pagination when scroll down', js: true do
    visit posts_path

    # before srolling
    expect(page).to have_content posts.last.title
    expect(page).to_not have_content posts.first.title

    scroll_to(:bottom)

    # after srolling
    expect(page).to have_content posts.first.title
  end
end
