require_relative 'sections/header_section.rb'

module Pages
  class HomePage < SitePrism::Page
    set_url '/101/'

    section :header, Sections::Header, '.site-header'

    def set_category
      header.select_category.click
    end
  end
end