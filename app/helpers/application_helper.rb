module ApplicationHelper

  # Return a link with correct active section
  def header_link_to(section)
    case section
    when 'home'
      if controller_name == "static_pagess" and action_name == "home"
        link_to "Home", root_path, class: "active"
      else
        link_to "Home", root_path
      end
    when 'about'
      if controller_name == "static_pages" and action_name == "about"
        link_to "About Us", '/about', class: "active"
      else
        link_to "About Us", '/about'
      end

    when 'albums'
      if controller_name == "albums"
        link_to "Photos", albums_path, class: "active"
      else
        link_to "Photos", albums_path
      end
    when 'members'
      if controller_name == "members"
        link_to "Members", members_path, class: "active"
      else
        link_to "Members", members_path
      end
    when 'events'
      if controller_name == "events"
        link_to "Events", events_path, class: "active"
      else
        link_to "Events", events_path
      end

    when 'contact'
      if controller_name == "static_pages" and action_name == "contact"
        link_to "Contact", '/contact', class: "active"
      else
        link_to "Contact", '/contact'
      end
    end
  end


  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Fenway"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

end
