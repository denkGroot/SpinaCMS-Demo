module Spina
  Page.class_eval do

    def to_json
      {
        id: id,
        name: name,
        created_at: created_at,
        updated_at: updated_at,
        title: title,
        meta_description: description,
        seo_title: seo_title,
        menu_title: menu_title,
        show_in_menu: show_in_menu,
        view_template: view_template,
        skip_to_first_child: skip_to_first_child,
        draft: draft,
        position: position,
        active: active,
        url_title: url_title,
        materialized_path: materialized_path,
        content: page_parts.map(&:to_json).to_h
      }
    end

  end
end