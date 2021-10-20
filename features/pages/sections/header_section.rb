module Sections
  class Header < SitePrism::Section
    element :logo,              '#tricentis_logo'
    element :btn_visit_support, '#visitsupport'
    element :search_bar,        '#search_form'
    element :btn_automobile,    '#nav_automobile'
    element :btn_truck,         '#nav_truck'
    element :btn_motorcycle,    '#nav_motorcycle'
    element :btn_camper,        '#nav_camper'
    element :btn_request_demo,  '#downloadtrial'
  
    def select_category
      btn_automobile.click
    end
  end
end