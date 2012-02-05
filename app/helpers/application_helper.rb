module ApplicationHelper
  def top_projects
    links = []
    links << content_tag(:h4, "Зоны редактирования", :class => "projects-well-header")
    links << link_to("Без проекта", "javascript://", :class => "btn", :rel => 0)
    links += Project.all.sort_by {|p| p.title.mb_chars }.map do |p|
      link_to p.title, "javascript://", :class => "btn", :rel => p.id
    end
    content_tag :div, links.join.html_safe, :class => "well projects-well"
  end
end
