# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :set_posts, only: :index

  def index
    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def set_posts
    @posts = Post.paginate(page: params[:page], per_page: 15).order(created_at: :desc)
  end
end
