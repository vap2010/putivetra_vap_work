module ArticlesHelper
  def article_submenu article
    article.children.map do |child|
      link_to child.title, article_url(child)
    end.join.html_safe
  end

  def article_url article
    "/#{article.meta_tag.url}"
  end
end
