module ApplicationHelper

  def full_title(page_title)
    base_title = "Simple Blog"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def logo
    image_tag("logo.png",
              alt: "Sample App", 
              class: "round")
  end
end
