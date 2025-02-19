module ApplicationHelper
  def svg_tag(icon_name, options = {})
    file = Rails.root.join("app", "assets", "images", "icons", "#{icon_name}.svg").read
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css "svg"

    options.each { |attr, value| svg[attr.to_s] = value }

    # rubocop:disable Rails/OutputSafety
    doc.to_html.html_safe
    # rubocop:enable Rails/OutputSafety
  end

  def table_component(column_names:, records:, partial_path:, custom_id: "records-list", suppress_cta: false, suppress_pagination: false, sticky_actions: false, scrollable: false, footer_content: nil, page: nil, paginated_page_url: nil, bulk_actions: [], user_type: nil, bordered: false, draggable: false, options: {})
    render partial: "shared/tables/table", locals: { column_names:, records:, partial_path:, custom_id:, suppress_cta:, suppress_pagination:, sticky_actions:, scrollable:, footer_content:, page:, paginated_page_url:, bulk_actions:, user_type:, bordered:, draggable:, options: }
  end

  def render_button(name, path, button_type, options)
    # The name of the SVG that will be associated with the button text
    svg_name = options[:svg_name]

    options[:class] = [ options[:class], "flex gap-x-2 items-center w-full px-6 py-2" ].compact.join(" ")

    case button_type
    when :link
      link_to(path, options) do
        concat(svg_tag(svg_name, class: "h-5 w-5 flex-shrink-0", "stroke-width": 2)) if svg_name
        concat name
      end
    when :button
      button_to(path, options) do
        concat(svg_tag(svg_name, class: "h-5 w-5 flex-shrink-0", "stroke-width": 2)) if svg_name
        concat name
      end
    end
  end

  def new_link_to(name, path, options)
    options[:svg_name] = "plus-circle"
    options[:class] = [ options[:class], "btn-sky" ].compact.join(" ")

    link_with_svg(name, path, options)
  end

  def link_with_svg(name, path, options)
    render_button(name, path, :link, options)
  end

  def pagination(records, paginated_page_url = nil)
    render partial: "shared/pagination", locals: { records:, paginated_page_url: }
  end

  def inline_error_for(field, form_obj, classes = nil)
    html = []
    if form_obj.errors[field].any?
      html << form_obj.errors[field].map do |msg|
        tag.div(msg, class: classes || "text-red-400 text-xs m-0 p-0 text-right mb-2")
      end
    end
    html.join
  end
end
