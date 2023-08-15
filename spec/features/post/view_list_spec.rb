# frozen_string_literal: true

require 'rails_helper'

feature 'User can view list of posts', "
  In order to read posts
  As any user
  I would like to be able to see the posts
" do
  given!(:posts) { create_list(:post, 2) }

  scenario 'User tries to view the list of posts' do
    visit posts_path

    posts.each do |post|
      expect(page).to have_content post.title.to_s
      expect(page).to have_content post.body.to_s
    end
  end
end
