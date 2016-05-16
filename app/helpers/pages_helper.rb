module PagesHelper

  #to be moved into a presenter
  def belt_count(*belt)
    case belt.count
    when 1
      Member.where(belt: belt[0]).count
    when 2
      Member.where(belt: belt[0], stripes: belt[1]).count
    else
      Member.all.count
    end
  end

  def belt_name(belt)
    case belt
    when 1
      "White"
    when 2
      "Blue"
    when 3
      "Purple"
    when 4
      "Brown"
    when 5
      "Black"
    end
  end

end
