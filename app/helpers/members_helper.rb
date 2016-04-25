module MembersHelper
  def sort_link(column, title = nil)
    title ||= column.titleize
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    icon = sort_direction == "asc" ? "glyphicon glyphicon-chevron-up" : "glyphicon glyphicon-chevron-down"
    icon = column == sort_column ? icon : ""
    link_to "#{title} <span class='#{icon}'></span>".html_safe, {column: column, direction: direction}
  end

  def belt_class(belt)
    case belt
    when 1
      "belt-white"
    when 2
      "belt-blue"
    when 3
      "belt-purple"
    when 4
      "belt-brown"
    when 5
      "belt-black"
    end
  end
end
