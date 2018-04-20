module PostsHelper
  def form_title
    @post.new_record? ? "Compartir" : "Modificar"
  end
  def total_review(post)
    if post.reviews.count>0
      post.reviews.map(&:value).sum/(post.reviews.count)
    else
      0
    end
  end
end
