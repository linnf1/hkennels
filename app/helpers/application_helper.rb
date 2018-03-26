module ApplicationHelper

  def nav_items
  [
    {
      url: root_path,
      title: 'Home'
    },
    {
      url: about_path,
      title: 'About Us'
    },
    {
      url: posts_path,
      title: 'Our Dogs'
    },
    {
      url: litters_path,
      title: 'Litters and Puppies for sale'
    }
    ]
  end

  def nav_helper style, tag_type
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}> "
    end

    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end
end
