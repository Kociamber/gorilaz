module ApplicationHelper

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
