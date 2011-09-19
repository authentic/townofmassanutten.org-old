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
    #

    primary.item :forward, 'Forward', '/show/forward'
    primary.item :acknowledgements, 'Acknowledgements', '/show/acknowledgements'


    primary.item :executive_summary, 'Summary', '/show/executive_summary' do |sub_nav|
      sub_nav.item :ex_sum_forward, 'Forward','/show/ex_sum_forward'
      sub_nav.item :ex_sum_acknowledgements, 'Acknowledgements','/show/ex_sum_acknowledgements'
      sub_nav.item :ex_sum_introduction, 'Introduction','/show/ex_sum_introduction'
      sub_nav.item :ex_sum_incorporation, 'Incorporation','/show/ex_sum_incorporation'
      sub_nav.item :ex_sum_boundaries, 'Town Boundaries','/show/ex_sum_boundaries'
      sub_nav.item :ex_sum_services, 'Town Services','/show/ex_sum_services'
      sub_nav.item :ex_sum_government, 'Town Government','/show/ex_sum_government'
      sub_nav.item :ex_sum_budget, 'Town Budget','/show/ex_sum_budget'
      sub_nav.item :ex_sum_considerations, 'Considerations','/show/ex_sum_considerations'

    end

   primary.item :introduction, 'Introduction', '/show/introduction' do |sub_nav|
      # Add an item to the sub navigation (same params again)
      sub_nav.item :background, 'Background','/show/background'
      sub_nav.item :history, 'History','/show/history'
      sub_nav.item :massanutten_area, 'Massanutten Area','/show/massanutten_area'
      sub_nav.item :why_incorporate_now, 'Why Incorporate Now','/show/why_incorporate_now'
      sub_nav.item :section_I_references, 'References','/show/section_I_references'
    end
  primary.item :incorporation, 'Incorporation', '/show/incorporation' do |sub_nav|
      # Add an item to the sub navigation (same params again)
      sub_nav.item :how_to_incorporate, 'How to Incorporate','/show/how_to_incorporate'
      sub_nav.item :general_assembly, 'General Assembly','/show/general_assembly'
      sub_nav.item :judicial_proceedings, 'Judicial Proceedings','/show/judicial_proceedings'
      sub_nav.item :commission_of_local_government, 'Commission of Local Government','/show/commission_of_local_government'
      sub_nav.item :town_chartering, 'Town Chartering','/show/town_chartering'
      sub_nav.item :timeline, 'Timeline','/show/timeline'
      sub_nav.item :section_II_faq, 'FAQ','/show/section_II_faq'
      sub_nav.item :section_II_references, 'References','/show/section_II_references'
  end
      primary.item :community, 'Community', '/show/community' do |sub_nav|
      # Add an item to the sub navigation (same params again)
      sub_nav.item :massanutten_community, 'Massanutten Community','/show/massanutten_community'
      sub_nav.item :massanutten_village, 'Massanutten Village','/show/massanutten_village'
      sub_nav.item :relevant_maps, 'Relevant Maps','/show/relevant_maps'
      sub_nav.item :town_map, 'Town Map','/show/town_map'
      sub_nav.item :town_details, 'Town Details','/show/town_details'
      sub_nav.item :local_towns, 'Local Towns','/show/local_towns'
      sub_nav.item :section_III_faq, 'FAQ','/show/section_III_faq'
      sub_nav.item :section_III_references, 'References','/show/section_III_references'
      end
    primary.item :infrastructure, 'Infrastructure', '/show/infrastructure' do |sub_nav|
      # Add an item to the sub navigation (same params again)
      sub_nav.item :existing_infrastructure, 'Existing Infrastructure','/show/existing_infrastructure'
      sub_nav.item :massanutten_roads, 'Massanutten Roads','/show/massanutten_roads'
      sub_nav.item :town_roads, 'Town Roads','/show/town_roads'
      sub_nav.item :road_grants, 'Road Grants','/show/road_grants'
      sub_nav.item :local_towns_infrastructure, 'Local Towns','/show/local_towns_infrastructure'
      sub_nav.item :section_IV_faq, 'FAQ','/show/section_IV_faq'
      sub_nav.item :section_IV_references, 'References','/show/section_IV_references'
    end

    primary.item :law_enforcement, 'Law Enforcement', '/show/law_enforcement' do |sub_nav|
      # Add an item to the sub navigation (same params again)
      sub_nav.item :existing_security, 'Existing Security','/show/existing_security'
      sub_nav.item :special_conservators, 'Special Conservators','/show/special_conservators'
      sub_nav.item :town_police, 'Town Police','/show/town_police'
      sub_nav.item :police_grants, 'Police Grants','/show/police_grants'
      sub_nav.item :local_towns_law_enforcement, 'Local Towns','/show/local_towns_law_enforcement'
      sub_nav.item :section_V_faq, 'FAQ','/show/section_V_faq'
      sub_nav.item :section_V_references, 'References','/show/section_V_references'

    end
    primary.item :parks_and_recreation, 'Parks & Recreation', '/show/parks_and_recreation' do |sub_nav|
      # Add an item to the sub navigation (same params again)
      sub_nav.item :existing_parks_and_recreation, 'Existing Parks & Recreation','/show/existing_parks_and_recreation'
      sub_nav.item :mpoa_parks_and_recreation, 'MPOA Parks & Recreation','/show/mpoa_parks_and_recreation'
      sub_nav.item :town_parks_and_recreation, 'Town Parks & Recreation','/show/town_parks_and_recreation'
      sub_nav.item :parks_and_recreation_assistance, 'Parks & Recreation Assistance','/show/parks_and_recreation_assistance'
      sub_nav.item :local_towns_parks_and_recreation, 'Local Towns','/show/local_towns_parks_and_recreation'
      sub_nav.item :section_VI_faq, 'FAQ','/show/section_VI_faq'
      sub_nav.item :section_VI_references, 'References','/show/section_VI_references'
    end
     primary.item :government, 'Government', '/show/government' do |sub_nav|
      # Add an item to the sub navigation (same params again)
      sub_nav.item :existing_government, 'Existing Government','/show/existing_government'
      sub_nav.item :rockingham_county_government, 'County Government','/show/rockingham_county_government'
      sub_nav.item :town_government, 'Town Government','/show/town_government'
      sub_nav.item :town_administration, 'Town Administration','/show/town_administration'
      sub_nav.item :local_towns_government, 'Local Towns','/show/local_towns_government'
      sub_nav.item :mpoa_post_incorporation, 'MPOA Post Incorporation','/show/mpoa_post_incorporation'
      sub_nav.item :section_VII_faq, 'FAQ','/show/section_VII_faq'
      sub_nav.item :section_VII_references, 'References','/show/section_VII_references'
     end

    primary.item :budget, 'Budget', '/show/budget' do |sub_nav|
      # Add an item to the sub navigation (same params again)
      sub_nav.item :existing_budget, 'Existing Budget','/show/existing_budget'
      sub_nav.item :taxing_authorities, 'Taxing Authorities','/show/taxing_authorities'
      sub_nav.item :town_expenditures, 'Town Expenditures','/show/town_expenditures'
      sub_nav.item :town_revenues, 'Town Revenues','/show/town_revenues'
      sub_nav.item :local_towns_budgets, 'Local Towns','/show/local_towns_budgets'
      sub_nav.item :mpoa_post_incorporation_budgets, 'MPOA Post Incorporation','/show/mpoa_post_incorporation_budgets'
      sub_nav.item :section_VIII_faq, 'FAQ','/show/section_VIII_faq'
      sub_nav.item :section_VIII_references, 'References','/show/section_VIII_references'
    end
    primary.item :considerations, 'Considerations', '/show/considerations' do |sub_nav|
      # Add an item to the sub navigation (same params again)
      sub_nav.item :what_are_considerations, 'What are Considerations','/show/what_are_considerations'
      sub_nav.item :governance, 'Governance','/show/governance'
      sub_nav.item :taxes_and_fees, 'Taxes and Fees','/show/taxes_and_fees'
      sub_nav.item :utilities, 'Utilities','/show/utilities'
      sub_nav.item :law_enforcement_privacy, 'Law Enforcement','/show/law_enforcement_privacy'
      sub_nav.item :roads, 'Roads','/show/roads'
      sub_nav.item :other_considerations, 'Other Considerations','/show/other_considerations'
    end
     primary.item :home, 'Home Page', '/home/index'
#
    # you can also specify a css id or class to attach to this particular level
    # works for all levels of the menu
    # primary.dom_id = 'menu-id'
    # primary.dom_class = 'menu-class'

    # You can turn off auto highlighting for a specific level
    # primary.auto_highlight = false

  end

end