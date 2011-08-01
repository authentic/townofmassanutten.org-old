# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  # Specify a custom renderer if needed.
  # The default renderer is SimpleNavigation::Renderer::List which renders HTML lists.
  # The renderer can also be specified as option in the render_navigation call.
  # navigation.renderer = Your::Custom::Renderer

  # Specify the class that will be applied to active navigation items. Defaults to 'selected'
  # navigation.selected_class = 'your_selected_class'

  # Item keys are normally added to list items as id.
  # This setting turns that off
  # navigation.autogenerate_item_ids = false

  # You can override the default logic that is used to autogenerate the item ids.
  # To do this, define a Proc which takes the key of the current item as argument.
  # The example below would add a prefix to each key.
  # navigation.id_generator = Proc.new {|key| "my-prefix-#{key}"}

  # If you need to add custom html around item names, you can define a proc that will be called with the name you pass in to the navigation.
  # The example below shows how to wrap items spans.
  # navigation.name_generator = Proc.new {|name| "<span>#{name}</span>"}

  # The auto highlight feature is turned on by default.
  # This turns it off globally (for the whole plugin)
  # navigation.auto_highlight = false

  # Define the primary navigation
  navigation.items do |primary|
    # Add an item to the primary navigation. The following params apply:
    # key - a symbol which uniquely defines your navigation item in the scope of the primary_navigation
    # name - will be displayed in the rendered navigation. This can also be a call to your I18n-framework.
    # url - the address that the generated item links to. You can also use url_helpers (named routes, restful routes helper, url_for etc.)
    # options - can be used to specify attributes that will be included in the rendered navigation item (e.g. id, class etc.)
    #           some special options that can be set:
    #           :if - Specifies a proc to call to determine if the item should
    #                 be rendered (e.g. <tt>:if => Proc.new { current_user.admin? }</tt>). The
    #                 proc should evaluate to a true or false value and is evaluated in the context of the view.
    #           :unless - Specifies a proc to call to determine if the item should not
    #                     be rendered (e.g. <tt>:unless => Proc.new { current_user.admin? }</tt>). The
    #                     proc should evaluate to a true or false value and is evaluated in the context of the view.
    #           :method - Specifies the http-method for the generated link - default is :get.
    #           :highlights_on - if autohighlighting is turned off and/or you want to explicitly specify
    #                            when the item should be highlighted, you can set a regexp which is matched
    #                            against the current URI.
    #
   primary.item :introduction, 'Introduction', '/show/introduction' do |sub_nav|
      # Add an item to the sub navigation (same params again)
      sub_nav.item :background, 'Background','/show/background'
      sub_nav.item :history, 'History','/show/history'
      sub_nav.item :massanutten_area, 'Massanutten Area','/show/massanutten_area'
      sub_nav.item :why_incorporate_now, 'Why Incorporate Now','/show/why_incorporate_now'
      sub_nav.item :section_I_references, 'References','/show/section_I_references'
    end
  primary.item :mpoa_government, 'MPOA Government', '/show/mpoa_government' do |sub_nav|
      # Add an item to the sub navigation (same params again)
      sub_nav.item :administration, 'Administration','/show/administration'
      sub_nav.item :board_of_directors, 'Board of Directors','/show/board_of_directors'
      sub_nav.item :committees, 'Committees','/show/committees'
      sub_nav.item :governing_documentation, 'Governing Documents','/show/governing_documentation'
      sub_nav.item :applications_forms, 'Applications & Forms','/show/applications_forms'
      sub_nav.item :documents_library, 'Document Library','/show/documents_library'
  end
      primary.item :parks_recreation, 'Parks & Recreation', '/show/parks_recreation' do |sub_nav|
      # Add an item to the sub navigation (same params again)
      sub_nav.item :electric_go_kart_track, 'Go-Kart Track','/show/electric_go_kart_track'
      sub_nav.item :miniature_golf, 'Miniature Golf','/show/miniature_golf'
      sub_nav.item :bungee_dome, 'Bungee Dome','/show/bungee_dome'
      sub_nav.item :pool_area, 'Pool Area','/show/pool_area'
      sub_nav.item :hopkins_park, 'Hopkins Park','/show/hopkins_park'
      sub_nav.item :rockingham_springs_arboretum, 'Arboretum','/show/rockingham_springs_arboretum'
      sub_nav.item :painters_pond, 'Painters Pond','/show/painters_pond'
      end
    primary.item :massanutten_police, 'Massanutten Police', '/show/massanutten_police' do |sub_nav|
      # Add an item to the sub navigation (same params again)
      sub_nav.item :mission, 'Mission','/show/mission'
      sub_nav.item :safety, 'Safety','/show/safety'
      sub_nav.item :personnel, 'Personnel','/show/personnel'
      sub_nav.item :training, 'Training','/show/training'
      sub_nav.item :important_phone_numbers, 'Important Numbers','/show/important_phone_numbers'
      sub_nav.item :police_applications_forms, 'Applications & Forms','/show/police_applications_forms'
    end
    primary.item :mpoa_rentals, 'MPOA Rentals', '/show/mpoa_rentals'
    primary.item :mpoa_members_info, 'MPOA Members Info', '/show/mpoa_members_info' do |sub_nav|
      # Add an item to the sub navigation (same params again)
      sub_nav.item :administration_services, 'Administrative Services','/show/administration_services'
      sub_nav.item :calendar_of_events, 'Calendar of Events','/show/calendar_of_events'
      sub_nav.item :members_special_events, 'Special Events','/show/members_special_events'
      sub_nav.item :serving_mpoa, 'Serving MPOA','/show/serving_mpoa'
      sub_nav.item :discount_coupons, 'Discount Coupons','/show/discount_coupons'

    end
    primary.item :contact_us, 'Contact Us', '/show/contact_us' do |sub_nav|
      # Add an item to the sub navigation (same params again)
      sub_nav.item :mpoa_board, 'Board of Directors','/show/mpoa_board'
      sub_nav.item :mpoa_administrator, 'Administrator','/show/mpoa_administrator'
      sub_nav.item :mpoa_police_chief, 'Police Chief','/show/mpoa_police_chief'
      sub_nav.item :mpoa_maintenance_foreman, 'Maintenance Foreman','/show/mpoa_maintenance_foreman'
      sub_nav.item :mpoa_webmaster, 'Webmaster','/show/mpoa_webmaster'
 sub_nav.item :local_numbers_of_interest, 'Numbers of Interest','/show/local_numbers_of_interest'
       sub_nav.item :employment_opportunities, 'Employment','/show/employment_opportunities'
    end
#
    # you can also specify a css id or class to attach to this particular level
    # works for all levels of the menu
    # primary.dom_id = 'menu-id'
    # primary.dom_class = 'menu-class'

    # You can turn off auto highlighting for a specific level
    # primary.auto_highlight = false

  end

end