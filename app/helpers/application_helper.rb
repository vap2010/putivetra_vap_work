module ApplicationHelper
  def top_projects
    links = []
    links << link_to("Без проекта", "javascript://", :class => "btn #{"primary" if cookies[:proj].blank?}")
    links += Project.all.sort_by {|p| p.title.mb_chars }.map do |p|
      link_to p.title, {:project_id => p.id}, :class => "btn #{"primary" if cookies[:proj].to_i == p.id}"
    end
    links.join.html_safe
  end
end
