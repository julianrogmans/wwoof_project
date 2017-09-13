class PagesController < ApplicationController
  def home
  end

  def farms
  end

  def blog
    @posts = Post.all.order(created_at: :desc)
  end

  def faq
  end
end
