# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :get_posts, only: :index

  private

  def get_posts
    @posts = Post.paginate(page: params[:page], per_page: 5).order(created_at: :desc)
  end
end
