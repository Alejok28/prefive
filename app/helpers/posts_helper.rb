module PostsHelper
  def form_title
    @post.new_record? ? "Compartir" : "Modificar"
  end
end
