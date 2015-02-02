module ApplicationHelper
  def title(page_title)
    content_for :title, page_title.to_s
  end
  
  def style(page_style)
    content_for :style, page_style.to_s
  end
  
end
