module ApplicationHelper
  def page_title(page_title = '')
    base_title = 'Animation Review App'

    page_title.empty? ? base_title : page_title + " | " + base_title
  end

  def rank_image(rank)
    case rank
    when 1
      "ranking1.png"
    when 2
      "ranking2.png"
    when 3
      "ranking3.png"
    end
  end
end
