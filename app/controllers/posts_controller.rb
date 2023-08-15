# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :get_posts, only: :index

  private

  def get_posts
    @posts = Post.all
  end
end
