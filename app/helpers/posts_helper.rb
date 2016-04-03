module PostsHelper

  def blog_index
    posts = Post.all.to_a
    index = {}
    #byebug
    posts.each do | post |
      month = post.created_at.strftime("%B")
      year = post.created_at.strftime("%Y")
      #index << [post.title, year, month]
      if index[year]
        if index[year][month]
          index[year][month] << post
        else
          add = {month => [post]}
          index[year].merge!(add)
        end
      else
        index[year] = {month => [post]}
      end
    end
    return index
  end
end
