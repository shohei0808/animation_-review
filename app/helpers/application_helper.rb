module ApplicationHelper
  def page_title(page_title = '')
    base_title = 'Animation Review App'

    page_title.empty? ? base_title : page_title + " | " + base_title
  end
end
